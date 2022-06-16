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
  ) {
    if (element.name == null) return '';

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

    final template = Template(apiRepositoryTemplate);
    final buffer = StringBuffer();

    // Write openapi repository
    buffer.writeln(template.renderString(repositoryModel.toJson()));

    // Write list blocs, filter, repository
    for (final builder in parsedAnnotation.builderList) {
      final output = _getListRepositoryFromBuilder(builder);
      if (output.isEmpty) continue;
      buffer.writeln(output);
    }

    return buffer.toString();
  }

  String _getListRepositoryFromBuilder(_ListRepositoryBuilder builder) {
    final generatedMethodElements = <MethodElement>[];
    final buffer = StringBuffer();
    final classElement = builder.apiClass;

    final methods = classElement.methods;

    for (final methodElement in classElement.methods) {
      if (generatedMethodElements.contains(methodElement)) {
        continue;
      }
      final returnType = methodElement.returnType;

      if (!returnType.isDartAsyncFuture) continue;

      final methodName = methodElement.displayName;
      if (shouldIgnore(
          methodName: methodName,
          ignoreEndpoints: builder.ignoreEndpoints,
          listEndpoints: builder.listEndpoints)) {
        continue;
      }

      final apiClass =
          classElement.displayName.titleCase.split(' ').first.camelCase;
      final namePrefixList = methodName.sentenceCase.split(' ');
      String namePrefix = '';

      for (int i = 0; i < namePrefixList.length; i += 1) {
        if (i < namePrefixList.length - 1) {
          namePrefix = '$namePrefix ${namePrefixList.elementAt(i)}'.camelCase;
        }
      }
      final isReadMethod =
          methodName.contains('Read') && methodName == '${namePrefix}Read';
      final isListMethod =
          methodName.contains('List') && methodName == '${namePrefix}List';
      if (isReadMethod || isListMethod) {
        List<LoaderMethodModel> loaders = [];
        if (isReadMethod) {
          final dataLoaderMethodModel = _DataMethodElementProcesser(
            methodElement: methodElement,
            defaultOffset: _defaultOffset,
            defaultPageSize: _defaultPageSize,
            ignoreParams: _ignoreParams,
          ).getLoaderMethodModel();
          if (dataLoaderMethodModel != null) {
            generatedMethodElements.add(methodElement);
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
                  listEndpoints: builder.listEndpoints))) {
            final listLoaderMethodModel = _ListMethodElementProcesser(
              methodElement: listMethod,
              defaultOffset: _defaultOffset,
              defaultPageSize: _defaultPageSize,
              ignoreParams: _ignoreParams,
            ).getLoaderMethodModel();

            if (listLoaderMethodModel != null) {
              generatedMethodElements.add(listMethod);
              loaders.add(listLoaderMethodModel);
            }
          }
        } else {
          final listLoaderMethodModel = _ListMethodElementProcesser(
            methodElement: methodElement,
            defaultOffset: _defaultOffset,
            defaultPageSize: _defaultPageSize,
            ignoreParams: _ignoreParams,
          ).getLoaderMethodModel();

          if (listLoaderMethodModel != null) {
            generatedMethodElements.add(methodElement);
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
                  listEndpoints: builder.listEndpoints))) {
            final listLoaderMethodModel = _DataMethodElementProcesser(
              methodElement: readMethod,
              defaultOffset: _defaultOffset,
              defaultPageSize: _defaultPageSize,
              ignoreParams: _ignoreParams,
            ).getLoaderMethodModel();

            if (listLoaderMethodModel != null) {
              generatedMethodElements.add(readMethod);
              loaders.add(listLoaderMethodModel);
            }
          }
        }
        return _processRepositoryData(
          loaders: loaders,
          methods: methods,
          api: apiClass,
          prefix: namePrefix,
        );
      } else {
        continue;
      }
    }

    return buffer.toString();
  }

  String _processRepositoryData({
    required List<LoaderMethodModel> loaders,
    required Iterable<MethodElement> methods,
    required String api,
    required String prefix,
  }) {
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

        buffer
          ..writeln(typeDefs)
          ..writeln();

        buffer
          ..writeln(_buildLoaderFilterClass(
            name: loader.name,
            isPaginated: loader.isPaginated,
            types: loader.types,
          ))
          ..writeln();
      }

      buffer
        ..writeln(_buildRepository(
          api: api,
          loaders: loaders,
          methods: methods,
          namePrefix: prefix,
        ))
        ..writeln();

      return buffer.toString();
    }
  }

  String _buildRepository({
    required String api,
    required String namePrefix,
    required List<LoaderMethodModel> loaders,
    required Iterable<MethodElement> methods,
  }) {
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

    final createModel = _getMethodModel('create', createMethod);
    final partialUpdateModel =
        _getMethodModel('partialUpdate', partialUpdateMethod);
    final updateModel = _getMethodModel('updateObject', updateMethod);
    final deleteModel = _getMethodModel('delete', deleteMethod);
    final crudMethods = [
      createModel,
      partialUpdateModel,
      updateModel,
      deleteModel,
    ].whereType<MethodModel>().toList();
    final loaderTemplateModel = LoaderRepositoryTemplateModel(
      api: api,
      dataLoader: dataLoaderForTemplate,
      listLoader: listLoaderForTemplate,
      hasDataLoader: dataLoaderForTemplate != null ? true : false,
      hasListLoader: listLoaderForTemplate != null ? true : false,
      repositoryName: namePrefix.pascalCase,
      crudMethods: crudMethods,
    );

    final repository = Template(repositoryTemplate).renderString(
      loaderTemplateModel.toJson(),
    );

    final dataCubit = dataLoaderForTemplate != null
        ? Template(dataCubitTemplate).renderString(
            CubitTemplateModel(
              name: namePrefix.pascalCase,
              returnType: dataLoaderForTemplate.returnType,
              hasFilter: dataLoaderForTemplate.hasFilter,
              crudMethods: crudMethods,
            ).toJson(),
          )
        : '';
    final listCubit = listLoaderForTemplate != null
        ? Template(listCubitTemplate).renderString(
            CubitTemplateModel(
              name: namePrefix.pascalCase,
              returnType: listLoaderForTemplate.returnType,
              hasFilter: listLoaderForTemplate.hasFilter,
              crudMethods: crudMethods,
            ).toJson(),
          )
        : '';
    return '$repository\n$dataCubit\n$listCubit';
  }

  MethodModel? _getMethodModel(
    String operation,
    MethodElement? method,
  ) {
    if (method == null) return null;

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

    return MethodModel(
      returnType: method.returnType.getDisplayString(
        withNullability: false,
      ),
      operation: operation,
      name: method.displayName,
      arguments: arguments,
      parameters: parameters,
    );
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
    return Template(template).renderString(typedefModel.toJson());
  }

  String _buildLoaderFilterClass({
    required String name,
    required List<TypeModel> types,
    required bool isPaginated,
  }) {
    final filterTemplateModel = FreezedTemplateModel(
        name: name, isPaginated: isPaginated, types: types);

    return Template(freezedFilterTemplate).renderString(
      filterTemplateModel.toJson(),
    );
  }

  bool shouldIgnore({
    required String methodName,
    required List<String> ignoreEndpoints,
    required List<String> listEndpoints,
  }) {
    if (ignoreEndpoints.contains('*')) {
      return true;
    } else if (ignoreEndpoints.contains(methodName)) {
      return true;
    }

    if (!listEndpoints.contains('*')) {
      if (!listEndpoints.contains(methodName)) {
        return true;
      }

      return false;
    }
    return false;
  }
}

class _ReturnModel {
  final DartType type;
  final bool isInline;

  const _ReturnModel(this.type, [this.isInline = false]);
}

class _ReaderTypes {
  final ClassElement buildForElement;
  final Iterable<_ListRepositoryBuilder> builderList;
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
      (e) => _ListRepositoryBuilder.fromDartObject(e),
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

class _ListRepositoryBuilder {
  final ClassElement apiClass;
  final List<String> listEndpoints;
  final List<String> ignoreEndpoints;

  const _ListRepositoryBuilder._(
    this.apiClass, {
    this.ignoreEndpoints = const [],
    this.listEndpoints = const [],
  });

  factory _ListRepositoryBuilder.fromDartObject(DartObject e) {
    final type = e.getField('apiClass')?.toTypeValue();
    if (type == null) {
      throw FormatException('ApiClass field must be a type');
    }

    final element = type.element;
    if (element is! ClassElement) {
      throw 'ApiClass field should be a Class Type';
    }

    final listEndpoints = e.getField('listEndpoints')?.toListValue();
    final ignoreEndpoints = e.getField('ignoreEndpoints')?.toListValue();

    final parsedEndpoints = <String>[];
    final parsedIgnoreEndpoints = <String>[];

    if (listEndpoints != null) {
      for (final endpoint in listEndpoints) {
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

    return _ListRepositoryBuilder._(
      element,
      ignoreEndpoints: parsedIgnoreEndpoints,
      listEndpoints: parsedEndpoints,
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

  LoaderMethodModel _getLoaderMethodModel(
      _ReturnModel returnModel, bool isList) {
    final methodParameters = _getMethodParameters();

    final types = _getTypesFromParams(methodParameters);
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
        defaultPageSize: defaultPageSize);
  }

  _ReturnModel? getInnerReturnType(DartType type, bool isInline);

  LoaderMethodModel? getLoaderMethodModel();
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
  LoaderMethodModel? getLoaderMethodModel() {
    final returnModel = getInnerReturnType(methodElement.returnType, false);
    if (returnModel != null) {
      return _getLoaderMethodModel(returnModel, true);
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
  LoaderMethodModel? getLoaderMethodModel() {
    final returnModel = getInnerReturnType(methodElement.returnType, false);
    if (returnModel != null) {
      return _getLoaderMethodModel(returnModel, false);
    } else {
      return null;
    }
  }
}
