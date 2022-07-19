// ignore_for_file: depend_on_referenced_packages
import 'package:analyzer/dart/element/element.dart';
import 'package:collection/collection.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/constant/value.dart';
import 'package:build/build.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mustache_template/mustache.dart';
import 'package:openapi_repository/src/templates/models.dart';
import 'package:openapi_repository/src/templates/templates.dart';
import 'package:recase/recase.dart';

import 'package:openapi_repository_annotations/openapi_repository_annotations.dart';
import 'package:source_gen/source_gen.dart';

import 'model_visitor.dart';

class OpenapiRepositoryGenerator
    extends GeneratorForAnnotation<OpenapiRepository> {
  int _defaultPageSize = 100;
  int _defaultOffset = 0;

  static const _ignoreParams = [
    'cancelToken',
    'headers',
    'extra',
    'validateStatus',
    'onSendProgress',
    'onReceiveProgress',
  ];

  @override
  generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    if (element.name == null) return '';
    BuildStepProvider.instance.buildStep = buildStep;
    final parsedAnnotation = _ReaderTypes.fromReader(annotation);

    _defaultOffset = parsedAnnotation.defaultOffset;
    _defaultPageSize = parsedAnnotation.defaultPageSize;

    final baseUrl = parsedAnnotation.baseUrl;
    final liveBasePath = parsedAnnotation.liveBasePath;
    final connectTimeout = parsedAnnotation.connectTimeout;
    final receiveTimeout = parsedAnnotation.receiveTimeout;
    final sendTimeout = parsedAnnotation.sendTimeout;
    final dioInterceptor = parsedAnnotation.dioInterceptor;

    final methods = parsedAnnotation.buildForElement.methods.where((element) {
      if (element.returnType.isVoid) return false;
      if (element.returnType.isDynamic) return false;
      if (element.isStatic) return false;
      return true;
    }).toList();

    final repositoryModel = RepositoryTemplateModel(
      repositoryName: element.name!.replaceFirst(r'$', ''),
      baseUrl: baseUrl != null ? "'$baseUrl'" : "'' // TODO: Add base url",
      liveBasePath: liveBasePath != null
          ? "'$liveBasePath'"
          : "''; // TODO: Add live base path",
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
      dioInterceptor: dioInterceptor?.getDisplayString(
        withNullability: false,
      ),
      accessors: methods.map((e) {
        final type = e.returnType.getDisplayString(withNullability: false);
        final methodName = e.name;
        final name = e.returnType
            .getDisplayString(withNullability: false)
            .sentenceCase
            .split(' ')
            .first
            .camelCase;
        return AccessorModel(type: type, name: name, methodName: methodName);
      }).toList(),
    );

    final template = Template(apiRepositoryTemplate, htmlEscapeValues: false);
    final buffer = StringBuffer();

    // Write openapi repository
    buffer.writeln(template.renderString(repositoryModel.toJson()));

    // Write list blocs, filter, repository
    for (final builder in parsedAnnotation.builderList) {
      final output = await _getGeneratedCodesFromBuilder(builder);
      if (output.isEmpty) continue;
      buffer.writeln(output);
    }

    return buffer.toString();
  }

  /// Get generated codes from builder.
  Future<String> _getGeneratedCodesFromBuilder(
      _RepositoryBuilder builder) async {
    final generatedMethodElements = <String>[];
    final generatedBuiltListConverters = <BuiltListJsonConverterModel>[];
    final buffer = StringBuffer();
    final classElement = builder.apiClass;

    final methods = classElement.methods;

    for (var methodElement in methods) {
      final returnType = methodElement.returnType;

      if (!returnType.isDartAsyncFuture) continue;
      final apiMethodType = await _visitAndGetMethodTypes(
          BuildStepProvider.instance.buildStep!, methodElement);
      final methodName = methodElement.displayName;

      final namePrefixList = methodName.sentenceCase.split(' ');
      String namePrefix = '';

      for (int i = 0; i < namePrefixList.length; i += 1) {
        if (i < namePrefixList.length - 1) {
          namePrefix = '$namePrefix ${namePrefixList.elementAt(i)}'.camelCase;
        }
      }
      // ignore if code is already generated for this method
      if (generatedMethodElements.contains(namePrefix)) {
        continue;
      }
      if (shouldIgnore(
          methodName: methodName,
          ignoreEndpoints: builder.ignoreEndpoints,
          allowedEndpoints: builder.allowedEndpoints)) {
        continue;
      }

      final apiClass =
          classElement.displayName.titleCase.split(' ').first.camelCase;

      final isReadMethod =
          methodName.contains('Read') && methodName == '${namePrefix}Read';
      final isListMethod =
          methodName.contains('List') && methodName == '${namePrefix}List';
      // if Read or List method is found, generate Repository, `DataCubit` and `ListCubit`.
      if ((isReadMethod || isListMethod) &&
          (apiMethodType != null && apiMethodType.contains('GET'))) {
        List<LoaderMethodModel> loaders = [];
        final methodElementCopy = methodElement;
        if (isReadMethod) {
          final dataMethodElementProcessor = _DataMethodElementProcesser(
            methodElement: methodElementCopy,
            defaultOffset: _defaultOffset,
            defaultPageSize: _defaultPageSize,
            ignoreParams: _ignoreParams,
          );
          final dataLoaderMethodModel =
              dataMethodElementProcessor.getLoaderMethodModel(
            generatedConverters: generatedBuiltListConverters,
          );
          if (dataLoaderMethodModel != null) {
            generatedMethodElements.add(namePrefix);
            generatedBuiltListConverters.addAll(
              dataLoaderMethodModel.builtListConverters
                  .where((element) => element.shouldCreateConverter),
            );
            loaders.add(dataLoaderMethodModel);
          }

          final listMethod = methods.firstWhereOrNull((element) {
            return (element.displayName == '${namePrefix}List' &&
                element.returnType.isDartAsyncFuture);
          });
          if (listMethod != null &&
              !(shouldIgnore(
                  methodName: listMethod.displayName,
                  ignoreEndpoints: builder.ignoreEndpoints,
                  allowedEndpoints: builder.allowedEndpoints))) {
            final listLoaderMethodModel = _ListMethodElementProcesser(
              methodElement: listMethod,
              defaultOffset: _defaultOffset,
              defaultPageSize: _defaultPageSize,
              ignoreParams: _ignoreParams,
            ).getLoaderMethodModel(
              generatedConverters: generatedBuiltListConverters,
            );

            if (listLoaderMethodModel != null) {
              generatedMethodElements.add(namePrefix);
              generatedBuiltListConverters.addAll(
                listLoaderMethodModel.builtListConverters
                    .where((element) => element.shouldCreateConverter),
              );
              loaders.add(listLoaderMethodModel);
            }
          }
        } else {
          final listLoaderMethodModel = _ListMethodElementProcesser(
            methodElement: methodElement,
            defaultOffset: _defaultOffset,
            defaultPageSize: _defaultPageSize,
            ignoreParams: _ignoreParams,
          ).getLoaderMethodModel(
            generatedConverters: generatedBuiltListConverters,
          );

          if (listLoaderMethodModel != null) {
            generatedMethodElements.add(namePrefix);
            generatedBuiltListConverters.addAll(
              listLoaderMethodModel.builtListConverters
                  .where((element) => element.shouldCreateConverter),
            );
            loaders.add(listLoaderMethodModel);
          }
          final readMethod = methods.firstWhereOrNull((element) {
            return (element.displayName == '${namePrefix}Read' &&
                element.returnType.isDartAsyncFuture);
          });
          if (readMethod != null &&
              !(shouldIgnore(
                  methodName: readMethod.displayName,
                  ignoreEndpoints: builder.ignoreEndpoints,
                  allowedEndpoints: builder.allowedEndpoints))) {
            final dataLoaderMethodModel = _DataMethodElementProcesser(
              methodElement: readMethod,
              defaultOffset: _defaultOffset,
              defaultPageSize: _defaultPageSize,
              ignoreParams: _ignoreParams,
            ).getLoaderMethodModel(
              generatedConverters: generatedBuiltListConverters,
            );

            if (dataLoaderMethodModel != null) {
              generatedMethodElements.add(namePrefix);
              generatedBuiltListConverters.addAll(
                dataLoaderMethodModel.builtListConverters
                    .where((element) => element.shouldCreateConverter),
              );
              loaders.add(dataLoaderMethodModel);
            }
          }
        }

        buffer.write((await _processRepositoryData(
          loaders: loaders,
          methods: methods,
          api: apiClass,
          prefix: namePrefix,
        )));
      } else {
        continue;
      }
    }

    return buffer.toString();
  }

  /// Get api call method type for the methodElement using `ASTNode`
  Future<String?> _visitAndGetMethodTypes(
      BuildStep buildStep, Element element) async {
    final visitor = NamedExpressionVisitor();

    var ast = await buildStep.resolver.astNodeFor(element, resolve: true);
    ast?.visitChildren(visitor);
    return visitor.methodType;
  }

  Future<String> _processRepositoryData({
    required List<LoaderMethodModel> loaders,
    required List<MethodElement> methods,
    required String api,
    required String prefix,
  }) async {
    final buffer = StringBuffer();

    if (loaders.isEmpty) {
      return '';
    } else {
      for (var loader in loaders) {
        String typeDefs = '';

        typeDefs = _buildTypeDefs(
          name: loader.name,
          type: loader.returnType,
          hasFilter: loader.hasFilter,
          template: loader.isListLoader
              ? typedefListCubitStateTemplate
              : typedefDataCubitStateTemplate,
        );
        // write typedefs
        buffer
          ..writeln(typeDefs)
          ..writeln();
        // writes filter classes
        for (var element in loader.builtListConverters) {
          if (element.shouldCreateConverter) {
            final converter = _buildBuiltListConverter(
              model: element,
            );

            buffer
              ..writeln(converter)
              ..writeln();
          }
        }
        buffer
          ..writeln(_buildLoaderFilterClass(
            loaderMethod: loader,
          ))
          ..writeln();
      }

      buffer
        ..writeln((await _buildRepository(
          api: api,
          loaders: loaders,
          methods: methods,
          namePrefix: prefix,
        )))
        ..writeln();

      return buffer.toString();
    }
  }

  Future<String> _buildRepository({
    required String api,
    required String namePrefix,
    required List<LoaderMethodModel> loaders,
    required Iterable<MethodElement> methods,
  }) async {
    LoaderTemplateModel? listLoaderForTemplate;
    LoaderTemplateModel? dataLoaderForTemplate;

    final listLoaderModel =
        loaders.firstWhereOrNull((element) => element.isListLoader);
    final dataLoaderModel =
        loaders.firstWhereOrNull((element) => !element.isListLoader);

    if (listLoaderModel != null) {
      listLoaderForTemplate = LoaderTemplateModel(
        api: api,
        methodName: listLoaderModel.name.camelCase,
        returnType: listLoaderModel.returnType,
        hasFilter: listLoaderModel.hasFilter,
        filterParams: listLoaderModel.filterParams,
        hasRequiredParam: listLoaderModel.hasRequiredParam,
        isInline: listLoaderModel.isInline,
      );
    }
    if (dataLoaderModel != null) {
      dataLoaderForTemplate = LoaderTemplateModel(
        api: api,
        methodName: dataLoaderModel.name.camelCase,
        returnType: dataLoaderModel.returnType,
        hasFilter: dataLoaderModel.hasFilter,
        filterParams: dataLoaderModel.filterParams,
        hasRequiredParam: dataLoaderModel.hasRequiredParam,
        isInline: dataLoaderModel.isInline,
      );
    }

    final createMethod = methods.firstWhereOrNull((element) {
      return element.displayName == '${namePrefix}Create';
    });
    final partialUpdateMethod = methods.firstWhereOrNull((element) {
      return element.displayName == '${namePrefix}PartialUpdate';
    });
    final updateMethod = methods.firstWhereOrNull((element) {
      return element.displayName == '${namePrefix}Update';
    });
    final deleteMethod = methods.firstWhereOrNull((element) {
      return element.displayName == '${namePrefix}Delete';
    });

    final crudElements = [
      createMethod,
      partialUpdateMethod,
      updateMethod,
      deleteMethod,
    ];
    final createModel = await _getMethodModel(
      operation: 'create',
      method: createMethod,
      apiMethodType: 'POST',
    );
    final partialUpdateModel = await _getMethodModel(
      operation: 'partialUpdate',
      method: partialUpdateMethod,
      apiMethodType: 'PATCH',
    );
    final updateModel = await _getMethodModel(
      operation: 'updateObject',
      method: updateMethod,
      apiMethodType: 'PUT',
    );
    final deleteModel = await _getMethodModel(
      operation: 'delete',
      method: deleteMethod,
      apiMethodType: 'DELETE',
    );
    final crudMethods = [
      createModel,
      partialUpdateModel,
      updateModel,
      deleteModel
    ].whereType<MethodModel>().toList();
    final prefixedMethods = methods.where((element) {
      final blackListedSuffixs = ['Read', 'List'];
      if (crudElements.contains(element)) {
        return false;
      } else {
        for (var blackSuffix in blackListedSuffixs) {
          if ('$namePrefix$blackSuffix' == element.displayName) {
            return false;
          }
        }
        final namePrefixForThisMethod = getPrefixName(element.displayName);
        return namePrefixForThisMethod == namePrefix;
      }
    });

    final operationModels = <MethodModel>[];
    for (var e in prefixedMethods) {
      final operationName =
          e.displayName.substring(namePrefix.length).camelCase;

      final methodModel = await _getMethodModel(
        operation: operationName,
        method: e,
        isCrud: false,
      );

      if (methodModel != null) {
        operationModels.add(methodModel);
      }
    }

    final loaderTemplateModel = LoaderRepositoryTemplateModel(
      api: api,
      dataLoader: dataLoaderForTemplate,
      listLoader: listLoaderForTemplate,
      hasDataLoader: dataLoaderForTemplate != null ? true : false,
      hasListLoader: listLoaderForTemplate != null ? true : false,
      repositoryName: namePrefix.pascalCase,
      crudMethods: [...crudMethods, ...operationModels],
    );

    final repository =
        Template(repositoryTemplate, htmlEscapeValues: false).renderString(
      loaderTemplateModel.toJson(),
    );

    final dataCubit = dataLoaderForTemplate != null
        ? Template(dataCubitTemplate, htmlEscapeValues: false).renderString(
            CubitTemplateModel(
              name: namePrefix.pascalCase,
              returnType: dataLoaderForTemplate.returnType,
              hasFilter: dataLoaderForTemplate.hasFilter,
              crudMethods: [...crudMethods, ...operationModels],
            ).toJson(),
          )
        : '';
    final listCubit = listLoaderForTemplate != null
        ? Template(listCubitTemplate, htmlEscapeValues: false).renderString(
            CubitTemplateModel(
              name: namePrefix.pascalCase,
              returnType: listLoaderForTemplate.returnType,
              hasFilter: listLoaderForTemplate.hasFilter,
              crudMethods: [...crudMethods, ...operationModels],
            ).toJson(),
          )
        : '';
    return '$repository\n$dataCubit\n$listCubit';
  }

  /// Returns `MethodModel` for a `MethodElement` by validating
  Future<MethodModel?> _getMethodModel({
    required String operation,
    required MethodElement? method,
    String? apiMethodType,
    bool? isCrud = true,
  }) async {
    final shouldNotReloadOperations = ['create', 'delete'];
    if (method == null) return null;
    final elementApiMethodType = await _visitAndGetMethodTypes(
        BuildStepProvider.instance.buildStep!, method);

    if (isCrud == false ||
        (elementApiMethodType != null &&
            apiMethodType != null &&
            elementApiMethodType.contains(apiMethodType))) {
      final params = method.parameters.where((element) {
        return !_ignoreParams.contains(element.displayName);
      });

      final arguments = params.map((e) {
        return ArgModel(
          e.type.getDisplayString(withNullability: false),
          e.displayName,
          !e.isRequired,
          e.isRequired,
        );
      }).toList();

      final parameters = params
          .map((e) => ParamModel('${e.displayName}: ${e.displayName}'))
          .toList();
      final dataProcessor = _DataMethodElementProcesser(
        methodElement: method,
        defaultOffset: _defaultOffset,
        defaultPageSize: _defaultPageSize,
        ignoreParams: _ignoreParams,
      );

      final listProcessor = _ListMethodElementProcesser(
        methodElement: method,
        defaultOffset: _defaultOffset,
        defaultPageSize: _defaultPageSize,
        ignoreParams: _ignoreParams,
      );

      final dataReturntype =
          dataProcessor.getInnerReturnType(method.returnType, false);
      final listReturntype =
          listProcessor.getInnerReturnType(method.returnType, false);
      String? type;

      bool isList = false;
      if (listReturntype?.type != null) {
        isList = true;

        type =
            'List<${listReturntype!.type.getDisplayString(withNullability: false)}>';
      } else if (dataReturntype?.type != null) {
        type =
            '${dataReturntype!.type.getDisplayString(withNullability: false)}?';
      }

      return MethodModel(
        returnType: type ?? 'void',
        operation: operation,
        name: method.displayName,
        arguments: arguments,
        parameters: parameters,
        isEmptyArgs: arguments.isEmpty,
        isList: isList,
        shouldDataBlocReload: !shouldNotReloadOperations.contains(
          operation.toLowerCase(),
        ),
      );
    } else {
      return null;
    }
  }

  String _buildTypeDefs({
    required String name,
    required String type,
    required bool hasFilter,
    required String template,
  }) {
    final typedefModel = TypedefTemplateModel(
      type: type,
      name: name,
      hasFilter: hasFilter,
    );
    return Template(template, htmlEscapeValues: false)
        .renderString(typedefModel.toJson());
  }

  /// Returns generated code for the Filters
  String _buildLoaderFilterClass({
    required LoaderMethodModel loaderMethod,
  }) {
    final filterTemplateModel = FreezedTemplateModel(
      name: loaderMethod.name,
      isPaginated: loaderMethod.isPaginated,
      types: loaderMethod.types,
      isTypesEmpty: loaderMethod.types.isEmpty,
      annotations: loaderMethod.builtListConverters
          .map((e) => AnnotationModel(e.converterName))
          .toList(),
    );

    return Template(freezedFilterTemplate, htmlEscapeValues: false)
        .renderString(
      filterTemplateModel.toJson(),
    );
  }

  String _buildBuiltListConverter({
    required BuiltListJsonConverterModel model,
  }) {
    final converterTemplateModel = BuiltListJsonConverterTemplateModel(
      converterName: model.converterName,
      innerReturnType: model.innerReturnType,
    );

    return Template(builtListConverterTemplate, htmlEscapeValues: false)
        .renderString(
      converterTemplateModel.toJson(),
    );
  }

  /// if the method should be ignored, return true
  bool shouldIgnore({
    required String methodName,
    required List<String> ignoreEndpoints,
    required List<String> allowedEndpoints,
  }) {
    if (ignoreEndpoints.contains('*')) {
      return true;
    } else if (ignoreEndpoints.contains(methodName)) {
      return true;
    }

    if (!allowedEndpoints.contains('*')) {
      if (!allowedEndpoints.contains(methodName)) {
        return true;
      }

      return false;
    }
    return false;
  }

  String getPrefixName(String methodName) {
    final namePrefixList = methodName.sentenceCase.split(' ');
    String namePrefix = '';

    for (int i = 0; i < namePrefixList.length; i += 1) {
      if (i < namePrefixList.length - 1) {
        namePrefix = '$namePrefix ${namePrefixList.elementAt(i)}'.camelCase;
      }
    }
    return namePrefix;
  }
}

class _ReturnModel {
  final DartType type;
  final bool isInline;

  const _ReturnModel(this.type, [this.isInline = false]);
}

class _ReaderTypes {
  final ClassElement buildForElement;
  final Iterable<_RepositoryBuilder> builderList;
  final int connectTimeout;
  final int receiveTimeout;
  final int sendTimeout;
  final int defaultOffset;
  final int defaultPageSize;
  final DartType? dioInterceptor;
  final String? liveBasePath;
  final String? baseUrl;

  const _ReaderTypes._({
    required this.buildForElement,
    this.builderList = const [],
    this.connectTimeout = 10000,
    this.receiveTimeout = 15000,
    this.sendTimeout = 15000,
    this.defaultOffset = 0,
    this.defaultPageSize = 100,
    this.dioInterceptor,
    this.liveBasePath,
    this.baseUrl,
  });

  factory _ReaderTypes.fromReader(ConstantReader reader) {
    final buildFor = reader.peek('buildFor')?.typeValue;
    final buildForElement = buildFor?.element;
    if (buildForElement == null || buildForElement is! ClassElement) {
      throw FormatException('Invalid parameter for BuildFor');
    }

    final baseUrl = reader.peek('baseUrl')?.stringValue;

    final liveBasePath = reader.peek('liveBasePath')?.stringValue;

    final defaultOffset = reader.peek('defaultOffset')?.intValue ?? 0;
    final defaultPageSize = reader.peek('defaultPageSize')?.intValue ?? 100;
    final connectTimeout = reader.peek('connectTimeout')?.intValue ?? 0;
    final receiveTimeout = reader.peek('receiveTimeout')?.intValue ?? 0;
    final sendTimeout = reader.peek('sendTimeout')?.intValue ?? 0;
    final dioInterceptor = reader.peek('dioInterceptor')?.typeValue;

    final builderList = reader.peek('builderList')?.listValue ?? [];
    final builderData = builderList.map(
      (e) => _RepositoryBuilder.fromDartObject(e),
    );

    return _ReaderTypes._(
      buildForElement: buildForElement,
      baseUrl: baseUrl,
      builderList: builderData,
      liveBasePath: liveBasePath,
      defaultOffset: defaultOffset,
      defaultPageSize: defaultPageSize,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
      dioInterceptor: dioInterceptor,
    );
  }
}

/// Parses and converts `RepositoryBuilder` to `_RepositoryBuilder`
/// to make the data usable for the code generation
class _RepositoryBuilder {
  final ClassElement apiClass;
  final List<String> allowedEndpoints;
  final List<String> ignoreEndpoints;

  const _RepositoryBuilder._(
    this.apiClass, {
    this.ignoreEndpoints = const [],
    this.allowedEndpoints = const [],
  });

  factory _RepositoryBuilder.fromDartObject(DartObject e) {
    final type = e.getField('apiClass')?.toTypeValue();
    if (type == null) {
      throw FormatException('ApiClass field must be a type');
    }

    final element = type.element;
    if (element is! ClassElement) {
      throw 'ApiClass field should be a Class Type';
    }

    final allowedEndpoints = e.getField('allowedEndpoints')?.toListValue();
    final ignoreEndpoints = e.getField('ignoreEndpoints')?.toListValue();

    final parsedEndpoints = <String>[];
    final parsedIgnoreEndpoints = <String>[];

    if (allowedEndpoints != null) {
      for (final endpoint in allowedEndpoints) {
        final value = endpoint.toStringValue();
        if (value == null) continue;
        parsedEndpoints.add(value);
      }
    }

    if (ignoreEndpoints != null) {
      for (final endpoint in ignoreEndpoints) {
        final value = endpoint.toStringValue();
        if (value == null) continue;
        parsedIgnoreEndpoints.add(value);
      }
    }

    return _RepositoryBuilder._(
      element,
      ignoreEndpoints: parsedIgnoreEndpoints,
      allowedEndpoints: parsedEndpoints,
    );
  }
}

abstract class _MethodElementProcessor {
  final MethodElement methodElement;
  final int defaultOffset;
  final int defaultPageSize;
  final List<String> ignoreParams;

  _MethodElementProcessor({
    required this.methodElement,
    required this.defaultOffset,
    required this.defaultPageSize,
    this.ignoreParams = const [],
  });
  DartType? _getInnerMostType(DartType type) {
    if (type is ParameterizedType && type.typeArguments.isNotEmpty) {
      final typeArgs = type.typeArguments;
      return typeArgs.first.isVoid ? null : _getInnerMostType(typeArgs.first);
    }

    return type;
  }

  List<TypeModel> _getTypesFromParams(List<ParameterElement> methodParameters) {
    return methodParameters.map((parameter) {
      final isOffsetLimit = ['offset', 'limit'].contains(parameter.name);
      final defaultValue = isOffsetLimit && parameter.isOptional
          ? '@Default(${parameter.name == 'offset' ? defaultOffset : defaultPageSize}) '
          : '';

      final isRequired = defaultValue.isEmpty && !parameter.isOptional;
      final isNullable = defaultValue.isEmpty && parameter.isOptional;

      return TypeModel(
        isRequired: isRequired,
        isNullable: isNullable,
        defaultValue: defaultValue,
        name: parameter.name,
        type: parameter.type.getDisplayString(
          withNullability: false,
        ),
      );
    }).toList();
  }

  List<ParameterElement> _getMethodParameters() {
    return methodElement.parameters
        .where((parameter) => !ignoreParams.contains(parameter.name))
        .toList();
  }

  /// Returns `LoaderMethodModel` to be used as the loader method for the `DataCubit` and `ListCubit`
  LoaderMethodModel _getLoaderMethodModel(
    _ReturnModel returnModel,
    bool isList, {
    required List<BuiltListJsonConverterModel> generatedConverters,
  }) {
    final methodParameters = _getMethodParameters();

    final types = _getTypesFromParams(methodParameters);
    final builtListConverters = <BuiltListJsonConverterModel>[];
    for (var element in types) {
      if (element.type.contains('BuiltList')) {
        final innerType = element.type.split('<')[1].split('>')[0];
        final converterName = 'BuiltList${innerType}Converter';
        final converter = BuiltListJsonConverterModel(
          converterName: converterName,
          innerReturnType: innerType,
        );
        if (generatedConverters.contains(converter) ||
            builtListConverters.contains(converter)) {
          builtListConverters.add(converter.copyWith(
            shouldCreateConverter: false,
          ));
        } else {
          builtListConverters.add(converter);
        }
      }
    }
    final hasFilter = methodParameters.isNotEmpty;
    final hasRequiredParam = methodParameters.any(
      (element) => element.isRequired,
    );

    return LoaderMethodModel(
      returnType: returnModel.type.getDisplayString(withNullability: false),
      name: methodElement.displayName.pascalCase,
      hasFilter: hasFilter,
      isListLoader: isList,
      isPaginated: methodParameters.any(
        (element) => ['offset', 'limit'].contains(element.name),
      ),
      types: types,
      filterParams: hasFilter && methodParameters.isNotEmpty
          ? methodParameters.map((e) {
              return ParamModel(
                  '${e.name}: filter${hasRequiredParam ? '' : '?'}.${e.name}');
            }).toList()
          : [],
      isInline: returnModel.isInline,
      hasRequiredParam: methodParameters.any((element) => element.isRequired),
      defaultOffset: defaultOffset,
      defaultPageSize: defaultPageSize,
      builtListConverters: builtListConverters,
    );
  }

  _ReturnModel? getInnerReturnType(DartType type, bool isInline);

  LoaderMethodModel? getLoaderMethodModel({
    List<BuiltListJsonConverterModel> generatedConverters = const [],
  });
}

class _ListMethodElementProcesser extends _MethodElementProcessor {
  _ListMethodElementProcesser({
    required super.methodElement,
    required super.defaultOffset,
    required super.defaultPageSize,
    super.ignoreParams,
  });

  @override
  _ReturnModel? getInnerReturnType(DartType type, bool isInline) {
    const listChecker = TypeChecker.any([
      TypeChecker.fromRuntime(List),
      TypeChecker.fromRuntime(BuiltList),
    ]);
    final innerMostType = _getInnerMostType(type);
    if (listChecker.isExactlyType(type) && innerMostType != null) {
      return _ReturnModel(innerMostType, isInline);
    }

    if (type is! ParameterizedType) return null;

    List<DartType> args = type.typeArguments;
    if (args.isEmpty) {
      final innerElement = innerMostType?.element;
      if (innerMostType == null || innerElement == null) return null;

      final inlineVisitor = InlineClassVisitor();
      innerElement.visitChildren(inlineVisitor);
      if (inlineVisitor.fields.isEmpty) return null;
      final results = inlineVisitor.fields;
      return getInnerReturnType(results.first.type, true);
    }
    if (args.first.isVoid) return null;

    return getInnerReturnType(args.first, false);
  }

  @override
  LoaderMethodModel? getLoaderMethodModel({
    List<BuiltListJsonConverterModel> generatedConverters = const [],
  }) {
    final returnModel = getInnerReturnType(methodElement.returnType, false);
    if (returnModel != null) {
      return _getLoaderMethodModel(
        returnModel,
        true,
        generatedConverters: generatedConverters,
      );
    } else {
      return null;
    }
  }
}

class _DataMethodElementProcesser extends _MethodElementProcessor {
  _DataMethodElementProcesser({
    required super.methodElement,
    required super.defaultOffset,
    required super.defaultPageSize,
    super.ignoreParams,
  });

  @override
  _ReturnModel? getInnerReturnType(DartType type, bool isInline) {
    final innerMostType = _getInnerMostType(type);
    if (innerMostType != null) {
      return _ReturnModel(innerMostType, isInline);
    }

    return null;
  }

  @override
  LoaderMethodModel? getLoaderMethodModel({
    List<BuiltListJsonConverterModel> generatedConverters = const [],
  }) {
    final returnModel = getInnerReturnType(methodElement.returnType, false);
    if (returnModel != null) {
      return _getLoaderMethodModel(
        returnModel,
        false,
        generatedConverters: generatedConverters,
      );
    } else {
      return null;
    }
  }
}

class BuildStepProvider {
  static BuildStepProvider get instance => _instance;
  static final BuildStepProvider _instance = BuildStepProvider._internal();

  BuildStepProvider._internal();

  set buildStep(BuildStep? buildStep) => _buildStep = buildStep;

  BuildStep? get buildStep => _buildStep;

  BuildStep? _buildStep;
}
