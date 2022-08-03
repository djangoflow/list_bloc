// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepositoryTemplateModel _$$_RepositoryTemplateModelFromJson(
        Map<String, dynamic> json) =>
    _$_RepositoryTemplateModel(
      repositoryName: json['repositoryName'] as String,
      baseUrl: json['baseUrl'] as String,
      liveBasePath: json['liveBasePath'] as String,
      accessors: (json['accessors'] as List<dynamic>?)
              ?.map((e) => AccessorModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      connectTimeout: json['connectTimeout'] as int,
      receiveTimeout: json['receiveTimeout'] as int,
      sendTimeout: json['sendTimeout'] as int,
      dioInterceptor: json['dioInterceptor'] as String?,
    );

Map<String, dynamic> _$$_RepositoryTemplateModelToJson(
        _$_RepositoryTemplateModel instance) =>
    <String, dynamic>{
      'repositoryName': instance.repositoryName,
      'baseUrl': instance.baseUrl,
      'liveBasePath': instance.liveBasePath,
      'accessors': instance.accessors.map((e) => e.toJson()).toList(),
      'connectTimeout': instance.connectTimeout,
      'receiveTimeout': instance.receiveTimeout,
      'sendTimeout': instance.sendTimeout,
      'dioInterceptor': instance.dioInterceptor,
    };

_$_AccessorModel _$$_AccessorModelFromJson(Map<String, dynamic> json) =>
    _$_AccessorModel(
      type: json['type'] as String,
      name: json['name'] as String,
      methodName: json['methodName'] as String,
    );

Map<String, dynamic> _$$_AccessorModelToJson(_$_AccessorModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'methodName': instance.methodName,
    };

_$_FreezedTemplateModel _$$_FreezedTemplateModelFromJson(
        Map<String, dynamic> json) =>
    _$_FreezedTemplateModel(
      name: json['name'] as String,
      isPaginated: json['isPaginated'] as bool? ?? true,
      types: (json['types'] as List<dynamic>?)
              ?.map((e) => TypeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      annotations: (json['annotations'] as List<dynamic>?)
              ?.map((e) => AnnotationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isTypesEmpty: json['isTypesEmpty'] as bool? ?? false,
    );

Map<String, dynamic> _$$_FreezedTemplateModelToJson(
        _$_FreezedTemplateModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'isPaginated': instance.isPaginated,
      'types': instance.types.map((e) => e.toJson()).toList(),
      'annotations': instance.annotations.map((e) => e.toJson()).toList(),
      'isTypesEmpty': instance.isTypesEmpty,
    };

_$_TypeModel _$$_TypeModelFromJson(Map<String, dynamic> json) => _$_TypeModel(
      isRequired: json['isRequired'] as bool,
      isNullable: json['isNullable'] as bool,
      defaultValue: json['defaultValue'] as String?,
      type: json['type'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_TypeModelToJson(_$_TypeModel instance) =>
    <String, dynamic>{
      'isRequired': instance.isRequired,
      'isNullable': instance.isNullable,
      'defaultValue': instance.defaultValue,
      'type': instance.type,
      'name': instance.name,
    };

_$_TypedefTemplateModel _$$_TypedefTemplateModelFromJson(
        Map<String, dynamic> json) =>
    _$_TypedefTemplateModel(
      type: json['type'] as String,
      name: json['name'] as String,
      hasFilter: json['hasFilter'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TypedefTemplateModelToJson(
        _$_TypedefTemplateModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'hasFilter': instance.hasFilter,
    };

_$_ListRepositoryTemplateModel _$$_ListRepositoryTemplateModelFromJson(
        Map<String, dynamic> json) =>
    _$_ListRepositoryTemplateModel(
      api: json['api'] as String,
      name: json['name'] as String,
      hasRequiredParam: json['hasRequiredParam'] ?? false,
      isInline: json['isInline'] as bool? ?? false,
      crudMethods: (json['crudMethods'] as List<dynamic>)
          .map((e) => MethodModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      methodName: json['methodName'] as String,
      returnType: json['returnType'] as String,
      hasFilter: json['hasFilter'] as bool? ?? false,
      additionalParams: (json['additionalParams'] as List<dynamic>?)
              ?.map((e) => ParamModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      filterParams: (json['filterParams'] as List<dynamic>?)
              ?.map((e) => ParamModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ListRepositoryTemplateModelToJson(
        _$_ListRepositoryTemplateModel instance) =>
    <String, dynamic>{
      'api': instance.api,
      'name': instance.name,
      'hasRequiredParam': instance.hasRequiredParam,
      'isInline': instance.isInline,
      'crudMethods': instance.crudMethods.map((e) => e.toJson()).toList(),
      'methodName': instance.methodName,
      'returnType': instance.returnType,
      'hasFilter': instance.hasFilter,
      'additionalParams':
          instance.additionalParams.map((e) => e.toJson()).toList(),
      'filterParams': instance.filterParams.map((e) => e.toJson()).toList(),
    };

_$_DataCubitTemplateModel _$$_DataCubitTemplateModelFromJson(
        Map<String, dynamic> json) =>
    _$_DataCubitTemplateModel(
      api: json['api'] as String,
      name: json['name'] as String,
      hasRequiredParam: json['hasRequiredParam'] ?? false,
      isInline: json['isInline'] as bool? ?? false,
      crudMethods: (json['crudMethods'] as List<dynamic>)
          .map((e) => MethodModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      methodName: json['methodName'] as String,
      returnType: json['returnType'] as String,
      additionalParams: (json['additionalParams'] as List<dynamic>?)
              ?.map((e) => ParamModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DataCubitTemplateModelToJson(
        _$_DataCubitTemplateModel instance) =>
    <String, dynamic>{
      'api': instance.api,
      'name': instance.name,
      'hasRequiredParam': instance.hasRequiredParam,
      'isInline': instance.isInline,
      'crudMethods': instance.crudMethods.map((e) => e.toJson()).toList(),
      'methodName': instance.methodName,
      'returnType': instance.returnType,
      'additionalParams':
          instance.additionalParams.map((e) => e.toJson()).toList(),
    };

_$_ParamModel _$$_ParamModelFromJson(Map<String, dynamic> json) =>
    _$_ParamModel(
      json['param'] as String,
    );

Map<String, dynamic> _$$_ParamModelToJson(_$_ParamModel instance) =>
    <String, dynamic>{
      'param': instance.param,
    };

_$_AnnotationModel _$$_AnnotationModelFromJson(Map<String, dynamic> json) =>
    _$_AnnotationModel(
      json['annotation'] as String,
    );

Map<String, dynamic> _$$_AnnotationModelToJson(_$_AnnotationModel instance) =>
    <String, dynamic>{
      'annotation': instance.annotation,
    };

_$_ArgModelModel _$$_ArgModelModelFromJson(Map<String, dynamic> json) =>
    _$_ArgModelModel(
      json['argType'] as String,
      json['argName'] as String,
      json['isNullableArg'] as bool,
      json['isRequiredArg'] as bool,
    );

Map<String, dynamic> _$$_ArgModelModelToJson(_$_ArgModelModel instance) =>
    <String, dynamic>{
      'argType': instance.argType,
      'argName': instance.argName,
      'isNullableArg': instance.isNullableArg,
      'isRequiredArg': instance.isRequiredArg,
    };

_$_MethodModel _$$_MethodModelFromJson(Map<String, dynamic> json) =>
    _$_MethodModel(
      returnType: json['returnType'] as String,
      name: json['name'] as String,
      operation: json['operation'] as String,
      arguments: (json['arguments'] as List<dynamic>)
          .map((e) => ArgModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      parameters: (json['parameters'] as List<dynamic>)
          .map((e) => ParamModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isEmptyArgs: json['isEmptyArgs'] as bool? ?? false,
      isList: json['isList'] as bool? ?? false,
      shouldDataBlocReload: json['shouldDataBlocReload'] as bool? ?? true,
    );

Map<String, dynamic> _$$_MethodModelToJson(_$_MethodModel instance) =>
    <String, dynamic>{
      'returnType': instance.returnType,
      'name': instance.name,
      'operation': instance.operation,
      'arguments': instance.arguments.map((e) => e.toJson()).toList(),
      'parameters': instance.parameters.map((e) => e.toJson()).toList(),
      'isEmptyArgs': instance.isEmptyArgs,
      'isList': instance.isList,
      'shouldDataBlocReload': instance.shouldDataBlocReload,
    };

_$_LoaderMethodModel _$$_LoaderMethodModelFromJson(Map<String, dynamic> json) =>
    _$_LoaderMethodModel(
      returnType: json['returnType'] as String,
      nullabilitySuffix: json['nullabilitySuffix'] as String,
      name: json['name'] as String,
      hasFilter: json['hasFilter'] as bool,
      isListLoader: json['isListLoader'] as bool,
      isPaginated: json['isPaginated'] as bool,
      hasRequiredParam: json['hasRequiredParam'] as bool,
      types: (json['types'] as List<dynamic>)
          .map((e) => TypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      filterParams: (json['filterParams'] as List<dynamic>)
          .map((e) => ParamModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultOffset: json['defaultOffset'] as int,
      defaultPageSize: json['defaultPageSize'] as int,
      builtListConverters: (json['builtListConverters'] as List<dynamic>?)
              ?.map((e) => BuiltListJsonConverterModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <BuiltListJsonConverterModel>[],
      isInline: json['isInline'] as bool? ?? false,
    );

Map<String, dynamic> _$$_LoaderMethodModelToJson(
        _$_LoaderMethodModel instance) =>
    <String, dynamic>{
      'returnType': instance.returnType,
      'nullabilitySuffix': instance.nullabilitySuffix,
      'name': instance.name,
      'hasFilter': instance.hasFilter,
      'isListLoader': instance.isListLoader,
      'isPaginated': instance.isPaginated,
      'hasRequiredParam': instance.hasRequiredParam,
      'types': instance.types.map((e) => e.toJson()).toList(),
      'filterParams': instance.filterParams.map((e) => e.toJson()).toList(),
      'defaultOffset': instance.defaultOffset,
      'defaultPageSize': instance.defaultPageSize,
      'builtListConverters':
          instance.builtListConverters.map((e) => e.toJson()).toList(),
      'isInline': instance.isInline,
    };

_$_LoaderRepositoryTemplateModel _$$_LoaderRepositoryTemplateModelFromJson(
        Map<String, dynamic> json) =>
    _$_LoaderRepositoryTemplateModel(
      dataLoader: json['dataLoader'] == null
          ? null
          : LoaderTemplateModel.fromJson(
              json['dataLoader'] as Map<String, dynamic>),
      listLoader: json['listLoader'] == null
          ? null
          : LoaderTemplateModel.fromJson(
              json['listLoader'] as Map<String, dynamic>),
      hasDataLoader: json['hasDataLoader'] as bool,
      hasListLoader: json['hasListLoader'] as bool,
      crudMethods: (json['crudMethods'] as List<dynamic>)
          .map((e) => MethodModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      repositoryName: json['repositoryName'] as String,
      api: json['api'] as String,
      dataLoaderMethodName: json['dataLoaderMethodName'] as String,
      listLoaderMethodName: json['listLoaderMethodName'] as String,
      dataFilterSuffix: json['dataFilterSuffix'] as String,
      listFilterSuffix: json['listFilterSuffix'] as String,
    );

Map<String, dynamic> _$$_LoaderRepositoryTemplateModelToJson(
        _$_LoaderRepositoryTemplateModel instance) =>
    <String, dynamic>{
      'dataLoader': instance.dataLoader?.toJson(),
      'listLoader': instance.listLoader?.toJson(),
      'hasDataLoader': instance.hasDataLoader,
      'hasListLoader': instance.hasListLoader,
      'crudMethods': instance.crudMethods.map((e) => e.toJson()).toList(),
      'repositoryName': instance.repositoryName,
      'api': instance.api,
      'dataLoaderMethodName': instance.dataLoaderMethodName,
      'listLoaderMethodName': instance.listLoaderMethodName,
      'dataFilterSuffix': instance.dataFilterSuffix,
      'listFilterSuffix': instance.listFilterSuffix,
    };

_$_LoaderTemplateModel _$$_LoaderTemplateModelFromJson(
        Map<String, dynamic> json) =>
    _$_LoaderTemplateModel(
      api: json['api'] as String,
      hasRequiredParam: json['hasRequiredParam'] ?? false,
      isInline: json['isInline'] as bool? ?? false,
      methodName: json['methodName'] as String,
      returnType: json['returnType'] as String,
      returnTypeNullabilitySuffix:
          json['returnTypeNullabilitySuffix'] as String,
      hasFilter: json['hasFilter'] as bool? ?? false,
      additionalParams: (json['additionalParams'] as List<dynamic>?)
              ?.map((e) => ParamModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      filterParams: (json['filterParams'] as List<dynamic>?)
              ?.map((e) => ParamModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_LoaderTemplateModelToJson(
        _$_LoaderTemplateModel instance) =>
    <String, dynamic>{
      'api': instance.api,
      'hasRequiredParam': instance.hasRequiredParam,
      'isInline': instance.isInline,
      'methodName': instance.methodName,
      'returnType': instance.returnType,
      'returnTypeNullabilitySuffix': instance.returnTypeNullabilitySuffix,
      'hasFilter': instance.hasFilter,
      'additionalParams':
          instance.additionalParams.map((e) => e.toJson()).toList(),
      'filterParams': instance.filterParams.map((e) => e.toJson()).toList(),
    };

_$_CubitTemplateModel _$$_CubitTemplateModelFromJson(
        Map<String, dynamic> json) =>
    _$_CubitTemplateModel(
      name: json['name'] as String,
      returnType: json['returnType'] as String,
      hasFilter: json['hasFilter'] as bool? ?? false,
      crudMethods: (json['crudMethods'] as List<dynamic>)
          .map((e) => MethodModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      filterSuffix: json['filterSuffix'] as String,
      loaderMethodName: json['loaderMethodName'] as String,
    );

Map<String, dynamic> _$$_CubitTemplateModelToJson(
        _$_CubitTemplateModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'returnType': instance.returnType,
      'hasFilter': instance.hasFilter,
      'crudMethods': instance.crudMethods.map((e) => e.toJson()).toList(),
      'filterSuffix': instance.filterSuffix,
      'loaderMethodName': instance.loaderMethodName,
    };

_$_BuiltListJsonConverterModel _$$_BuiltListJsonConverterModelFromJson(
        Map<String, dynamic> json) =>
    _$_BuiltListJsonConverterModel(
      converterName: json['converterName'] as String,
      innerReturnType: json['innerReturnType'] as String,
      shouldCreateConverter: json['shouldCreateConverter'] as bool? ?? true,
    );

Map<String, dynamic> _$$_BuiltListJsonConverterModelToJson(
        _$_BuiltListJsonConverterModel instance) =>
    <String, dynamic>{
      'converterName': instance.converterName,
      'innerReturnType': instance.innerReturnType,
      'shouldCreateConverter': instance.shouldCreateConverter,
    };

_$_BuiltListJsonConverterTemplateModel
    _$$_BuiltListJsonConverterTemplateModelFromJson(
            Map<String, dynamic> json) =>
        _$_BuiltListJsonConverterTemplateModel(
          converterName: json['converterName'] as String,
          innerReturnType: json['innerReturnType'] as String,
        );

Map<String, dynamic> _$$_BuiltListJsonConverterTemplateModelToJson(
        _$_BuiltListJsonConverterTemplateModel instance) =>
    <String, dynamic>{
      'converterName': instance.converterName,
      'innerReturnType': instance.innerReturnType,
    };
