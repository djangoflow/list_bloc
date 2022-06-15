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

  static const listChecker = TypeChecker.any([
    TypeChecker.fromRuntime(List),
    TypeChecker.fromRuntime(BuiltList),
  ]);

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
      final dataOutput = _getDataRepositoryFromBuilder(builder);
      if (dataOutput.isEmpty) continue;
      buffer.writeln(dataOutput);
    }

    return buffer.toString();
  }

  String _getListRepositoryFromBuilder(_ListRepositoryBuilder builder) {
    final buffer = StringBuffer();
    final classElement = builder.apiClass;

    final methods = classElement.methods;

    for (final methodElement in classElement.methods) {
      final returnType = methodElement.returnType;

      if (!returnType.isDartAsyncFuture) continue;

      final methodName = methodElement.displayName;
      if (builder.ignoreEndpoints.contains('*')) {
        continue;
      } else if (builder.ignoreEndpoints.contains(methodName)) {
        continue;
      }

      if (!builder.listEndpoints.contains('*')) {
        if (!builder.listEndpoints.contains(methodName)) continue;
      }

      final apiClass =
          classElement.displayName.titleCase.split(' ').first.camelCase;

      final returnModel = _getInnerListReturnType(returnType, false);
      if (returnModel == null) continue;
      final type = returnModel.type.getDisplayString(withNullability: false);
      final methodParameters = methodElement.parameters
          .where((parameter) => !_ignoreParams.contains(parameter.name))
          .toList();

      final optionalParams = methodParameters.where((element) {
        return element.isOptional;
      }).toList();

      buffer
        ..writeln()
        ..writeln(_buildTypeDefs(
          type: type,
          name: methodName.pascalCase,
          hasFilter: methodParameters.isNotEmpty,
        ))
        ..writeln();
      if (optionalParams.isNotEmpty) {
        buffer
          ..writeln(_buildFilterClass(
            name: methodName.pascalCase,
            parameters: methodParameters,
            defaultOffset: _defaultOffset,
            defaultPageSize: _defaultPageSize,
          ))
          ..writeln();
      }
      buffer.writeln(_buildListLoader(
        type: type,
        filterParameters: methodParameters,
        hasFilter: methodParameters.isNotEmpty,
        api: apiClass,
        methodName: methodName,
        methods: methods,
        isInline: returnModel.isInline,
      ));
    }

    return buffer.toString();
  }

  String _getDataRepositoryFromBuilder(_ListRepositoryBuilder builder) {
    final buffer = StringBuffer();
    final classElement = builder.apiClass;

    final methods = classElement.methods;

    for (final methodElement in classElement.methods) {
      final returnType = methodElement.returnType;

      if (!returnType.isDartAsyncFuture) continue;

      final methodName = methodElement.displayName;
      if (methodName.contains('Read')) {
        final apiClass =
            classElement.displayName.titleCase.split(' ').first.camelCase;
        final innerMostType = _getInnerMostType(returnType);
        if (innerMostType != null) {
          final returnModel = _ReturnModel(innerMostType, false);
          final type =
              returnModel.type.getDisplayString(withNullability: false);
          final methodParameters = methodElement.parameters
              .where((parameter) => !_ignoreParams.contains(parameter.name))
              .toList();

          buffer
            ..writeln()
            ..writeln(_buildTypeDefsDataCubit(
              type: type,
              name: methodName.pascalCase,
              hasFilter: methodParameters.isNotEmpty,
            ))
            ..writeln();

          buffer
            ..writeln(_buildFilterClass(
              name: methodName.pascalCase,
              parameters: methodParameters,
              defaultOffset: _defaultOffset,
              defaultPageSize: _defaultPageSize,
            ))
            ..writeln();

          buffer.writeln(_buildListLoader(
            type: type,
            filterParameters: methodParameters,
            hasFilter: methodParameters.isNotEmpty,
            api: apiClass,
            methodName: methodName,
            methods: methods,
            isInline: returnModel.isInline,
            isDataCubit: true,
          ));

          return buffer.toString();
        } else {
          continue;
        }
      }
    }

    return '';
  }

  _ReturnModel? _getInnerListReturnType(DartType type, bool isInline) {
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
      return _getInnerListReturnType(results.first.type, true);
    }
    if (args.first.isVoid) return null;

    return _getInnerListReturnType(args.first, false);
  }

  DartType? _getInnerMostType(DartType type) {
    if (type is ParameterizedType && type.typeArguments.isNotEmpty) {
      final typeArgs = type.typeArguments;
      return typeArgs.first.isVoid ? null : _getInnerMostType(typeArgs.first);
    }

    return type;
  }

  String _buildListLoader({
    required String type,
    required String api,
    required String methodName,
    required Iterable<MethodElement> methods,
    required bool hasFilter,
    required List<ParameterElement> filterParameters,
    bool isInline = false,
    bool isDataCubit = false,
  }) {
    final hasRequiredParam = filterParameters.any(
      (element) => element.isRequired,
    ); // for PK values the filter can not be null

    final namePrefixList = methodName.sentenceCase.split(' ');
    String namePrefix = '';

    for (int i = 0; i < namePrefixList.length; i += 1) {
      if (i < namePrefixList.length - 1) {
        namePrefix = '$namePrefix ${namePrefixList.elementAt(i)}'.camelCase;
      }
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

    final createModel = _getMethodModel('createModel', createMethod);
    final partialUpdateModel =
        _getMethodModel('partialUpdateModel', partialUpdateMethod);
    final updateModel = _getMethodModel('updateModel', updateMethod);
    final deleteModel = _getMethodModel('deleteModel', deleteMethod);

    final listRepositoryModel = ListRepositoryTemplateModel(
      api: api,
      hasRequiredParam: hasRequiredParam,
      name: methodName.pascalCase,
      isInline: isInline,
      methodName: methodName,
      crudMethods: [
        createModel,
        partialUpdateModel,
        updateModel,
        deleteModel,
      ].whereType<MethodModel>().toList(),
      returnType: type,
      hasFilter: hasFilter,
      filterParams: hasFilter && filterParameters.isNotEmpty
          ? filterParameters.map((e) {
              return ParamModel(
                  '${e.name}: filter${hasRequiredParam ? '' : '?'}.${e.name}');
            }).toList()
          : [],
    );
    return Template(
            isDataCubit ? repositoryDataTemplate : repositoryListTemplate)
        .renderString(
      listRepositoryModel.toJson(),
    );
  }

  String _buildDataCubitLoader({
    required String type,
    required String api,
    required String methodName,
    required Iterable<MethodElement> methods,
    required bool hasFilter,
    required List<ParameterElement> filterParameters,
    bool isInline = false,
  }) {
    final hasRequiredParam = filterParameters.any(
      (element) => element.isRequired,
    ); // for PK values the filter can not be null

    final namePrefixList = methodName.sentenceCase.split(' ');
    String namePrefix = '';

    for (int i = 0; i < namePrefixList.length; i += 1) {
      if (i < namePrefixList.length - 1) {
        namePrefix = '$namePrefix ${namePrefixList.elementAt(i)}'.camelCase;
      }
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

    final readMethod = methods.firstWhereOrNull((element) {
      return element.displayName == '${namePrefix}Read';
    });

    final createModel = _getMethodModel('createModel', createMethod);
    final partialUpdateModel =
        _getMethodModel('partialUpdateModel', partialUpdateMethod);
    final updateModel = _getMethodModel('updateModel', updateMethod);
    final deleteModel = _getMethodModel('deleteModel', deleteMethod);
    final readModel = _getMethodModel('readModel', readMethod);

    final dataCubitTemplateModel = DataCubitTemplateModel(
      api: api,
      hasRequiredParam: hasRequiredParam,
      name: methodName.pascalCase,
      isInline: isInline,
      methodName: methodName,
      crudMethods: [
        createModel,
        partialUpdateModel,
        updateModel,
        deleteModel,
      ].whereType<MethodModel>().toList(),
      returnType: type,
    );
    return Template(repositoryDataTemplate).renderString(
      dataCubitTemplateModel.toJson(),
    );
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
        // '${e.type.getDisplayString(withNullability: false)} ${e.displayName}',
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
  }) {
    final typedefModel = TypedefTemplateModel(
      type: type,
      name: name,
      hasFilter: hasFilter,
    );
    return Template(typedefTemplate).renderString(typedefModel.toJson());
  }

  String _buildTypeDefsDataCubit({
    required String name,
    required String type,
    required bool hasFilter,
  }) {
    final typedefModel = TypedefTemplateModel(
      type: type,
      name: name,
      hasFilter: hasFilter,
    );
    return Template(typedefDataCubitTemplate)
        .renderString(typedefModel.toJson());
  }

  String _buildFilterClass({
    required String name,
    required List<ParameterElement> parameters,
    required int defaultOffset,
    required int defaultPageSize,
  }) {
    final filterTemplateModel = FreezedTemplateModel(
        name: name,
        isPaginated: parameters.any(
          (element) => ['offset', 'limit'].contains(element.name),
        ),
        types: parameters.map((parameter) {
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
        }).toList());

    return Template(freezedFilterTemplate).renderString(
      filterTemplateModel.toJson(),
    );
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
