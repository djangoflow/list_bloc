// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RepositoryTemplateModel _$RepositoryTemplateModelFromJson(
        Map<String, dynamic> json) =>
    _RepositoryTemplateModel(
      repositoryName: json['repositoryName'] as String,
      buildForClass: json['buildForClass'] as String,
      baseUrl: json['baseUrl'] as String,
      liveBasePath: json['liveBasePath'] as String,
      accessors: (json['accessors'] as List<dynamic>?)
              ?.map((e) => AccessorModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      connectTimeout: (json['connectTimeout'] as num).toInt(),
      receiveTimeout: (json['receiveTimeout'] as num).toInt(),
      sendTimeout: (json['sendTimeout'] as num).toInt(),
    );

Map<String, dynamic> _$RepositoryTemplateModelToJson(
        _RepositoryTemplateModel instance) =>
    <String, dynamic>{
      'repositoryName': instance.repositoryName,
      'buildForClass': instance.buildForClass,
      'baseUrl': instance.baseUrl,
      'liveBasePath': instance.liveBasePath,
      'accessors': instance.accessors.map((e) => e.toJson()).toList(),
      'connectTimeout': instance.connectTimeout,
      'receiveTimeout': instance.receiveTimeout,
      'sendTimeout': instance.sendTimeout,
    };

_AccessorModel _$AccessorModelFromJson(Map<String, dynamic> json) =>
    _AccessorModel(
      type: json['type'] as String,
      name: json['name'] as String,
      methodName: json['methodName'] as String,
    );

Map<String, dynamic> _$AccessorModelToJson(_AccessorModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'methodName': instance.methodName,
    };

_FreezedTemplateModel _$FreezedTemplateModelFromJson(
        Map<String, dynamic> json) =>
    _FreezedTemplateModel(
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

Map<String, dynamic> _$FreezedTemplateModelToJson(
        _FreezedTemplateModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'isPaginated': instance.isPaginated,
      'types': instance.types.map((e) => e.toJson()).toList(),
      'annotations': instance.annotations.map((e) => e.toJson()).toList(),
      'isTypesEmpty': instance.isTypesEmpty,
    };

_TypeModel _$TypeModelFromJson(Map<String, dynamic> json) => _TypeModel(
      isRequired: json['isRequired'] as bool,
      isNullable: json['isNullable'] as bool,
      defaultValue: json['defaultValue'] as String?,
      type: json['type'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$TypeModelToJson(_TypeModel instance) =>
    <String, dynamic>{
      'isRequired': instance.isRequired,
      'isNullable': instance.isNullable,
      'defaultValue': instance.defaultValue,
      'type': instance.type,
      'name': instance.name,
    };

_TypedefTemplateModel _$TypedefTemplateModelFromJson(
        Map<String, dynamic> json) =>
    _TypedefTemplateModel(
      type: json['type'] as String,
      name: json['name'] as String,
      hasFilter: json['hasFilter'] as bool? ?? false,
    );

Map<String, dynamic> _$TypedefTemplateModelToJson(
        _TypedefTemplateModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'hasFilter': instance.hasFilter,
    };

_ListRepositoryTemplateModel _$ListRepositoryTemplateModelFromJson(
        Map<String, dynamic> json) =>
    _ListRepositoryTemplateModel(
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

Map<String, dynamic> _$ListRepositoryTemplateModelToJson(
        _ListRepositoryTemplateModel instance) =>
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

_DataCubitTemplateModel _$DataCubitTemplateModelFromJson(
        Map<String, dynamic> json) =>
    _DataCubitTemplateModel(
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

Map<String, dynamic> _$DataCubitTemplateModelToJson(
        _DataCubitTemplateModel instance) =>
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

_ParamModel _$ParamModelFromJson(Map<String, dynamic> json) => _ParamModel(
      json['param'] as String,
    );

Map<String, dynamic> _$ParamModelToJson(_ParamModel instance) =>
    <String, dynamic>{
      'param': instance.param,
    };

_AnnotationModel _$AnnotationModelFromJson(Map<String, dynamic> json) =>
    _AnnotationModel(
      json['annotation'] as String,
    );

Map<String, dynamic> _$AnnotationModelToJson(_AnnotationModel instance) =>
    <String, dynamic>{
      'annotation': instance.annotation,
    };

_ArgModelModel _$ArgModelModelFromJson(Map<String, dynamic> json) =>
    _ArgModelModel(
      json['argType'] as String,
      json['argName'] as String,
      json['isNullableArg'] as bool,
      json['isRequiredArg'] as bool,
    );

Map<String, dynamic> _$ArgModelModelToJson(_ArgModelModel instance) =>
    <String, dynamic>{
      'argType': instance.argType,
      'argName': instance.argName,
      'isNullableArg': instance.isNullableArg,
      'isRequiredArg': instance.isRequiredArg,
    };

_MethodModel _$MethodModelFromJson(Map<String, dynamic> json) => _MethodModel(
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
      shouldUseAsList: json['shouldUseAsList'] as bool? ?? false,
    );

Map<String, dynamic> _$MethodModelToJson(_MethodModel instance) =>
    <String, dynamic>{
      'returnType': instance.returnType,
      'name': instance.name,
      'operation': instance.operation,
      'arguments': instance.arguments.map((e) => e.toJson()).toList(),
      'parameters': instance.parameters.map((e) => e.toJson()).toList(),
      'isEmptyArgs': instance.isEmptyArgs,
      'isList': instance.isList,
      'shouldUseAsList': instance.shouldUseAsList,
    };

_LoaderMethodModel _$LoaderMethodModelFromJson(Map<String, dynamic> json) =>
    _LoaderMethodModel(
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
      defaultOffset: (json['defaultOffset'] as num).toInt(),
      defaultPageSize: (json['defaultPageSize'] as num).toInt(),
      builtListConverters: (json['builtListConverters'] as List<dynamic>?)
              ?.map((e) => BuiltListJsonConverterModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <BuiltListJsonConverterModel>[],
      isInline: json['isInline'] as bool? ?? false,
      shouldUseAsList: json['shouldUseAsList'] as bool? ?? false,
    );

Map<String, dynamic> _$LoaderMethodModelToJson(_LoaderMethodModel instance) =>
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
      'shouldUseAsList': instance.shouldUseAsList,
    };

_LoaderRepositoryTemplateModel _$LoaderRepositoryTemplateModelFromJson(
        Map<String, dynamic> json) =>
    _LoaderRepositoryTemplateModel(
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

Map<String, dynamic> _$LoaderRepositoryTemplateModelToJson(
        _LoaderRepositoryTemplateModel instance) =>
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

_LoaderTemplateModel _$LoaderTemplateModelFromJson(Map<String, dynamic> json) =>
    _LoaderTemplateModel(
      api: json['api'] as String,
      hasRequiredParam: json['hasRequiredParam'] ?? false,
      isInline: json['isInline'] as bool? ?? false,
      shouldUseAsList: json['shouldUseAsList'] as bool? ?? false,
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

Map<String, dynamic> _$LoaderTemplateModelToJson(
        _LoaderTemplateModel instance) =>
    <String, dynamic>{
      'api': instance.api,
      'hasRequiredParam': instance.hasRequiredParam,
      'isInline': instance.isInline,
      'shouldUseAsList': instance.shouldUseAsList,
      'methodName': instance.methodName,
      'returnType': instance.returnType,
      'returnTypeNullabilitySuffix': instance.returnTypeNullabilitySuffix,
      'hasFilter': instance.hasFilter,
      'additionalParams':
          instance.additionalParams.map((e) => e.toJson()).toList(),
      'filterParams': instance.filterParams.map((e) => e.toJson()).toList(),
    };

_CubitTemplateModel _$CubitTemplateModelFromJson(Map<String, dynamic> json) =>
    _CubitTemplateModel(
      name: json['name'] as String,
      returnType: json['returnType'] as String,
      hasFilter: json['hasFilter'] as bool? ?? false,
      crudMethods: (json['crudMethods'] as List<dynamic>)
          .map((e) => MethodModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      filterSuffix: json['filterSuffix'] as String,
      loaderMethodName: json['loaderMethodName'] as String,
      blocMixins: json['blocMixins'] as String?,
      hasBlocMixins: json['hasBlocMixins'] as bool? ?? false,
    );

Map<String, dynamic> _$CubitTemplateModelToJson(_CubitTemplateModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'returnType': instance.returnType,
      'hasFilter': instance.hasFilter,
      'crudMethods': instance.crudMethods.map((e) => e.toJson()).toList(),
      'filterSuffix': instance.filterSuffix,
      'loaderMethodName': instance.loaderMethodName,
      'blocMixins': instance.blocMixins,
      'hasBlocMixins': instance.hasBlocMixins,
    };

_BuiltListJsonConverterModel _$BuiltListJsonConverterModelFromJson(
        Map<String, dynamic> json) =>
    _BuiltListJsonConverterModel(
      converterName: json['converterName'] as String,
      innerReturnType: json['innerReturnType'] as String,
      shouldCreateConverter: json['shouldCreateConverter'] as bool? ?? true,
    );

Map<String, dynamic> _$BuiltListJsonConverterModelToJson(
        _BuiltListJsonConverterModel instance) =>
    <String, dynamic>{
      'converterName': instance.converterName,
      'innerReturnType': instance.innerReturnType,
      'shouldCreateConverter': instance.shouldCreateConverter,
    };

_BuiltListJsonConverterTemplateModel
    _$BuiltListJsonConverterTemplateModelFromJson(Map<String, dynamic> json) =>
        _BuiltListJsonConverterTemplateModel(
          converterName: json['converterName'] as String,
          innerReturnType: json['innerReturnType'] as String,
        );

Map<String, dynamic> _$BuiltListJsonConverterTemplateModelToJson(
        _BuiltListJsonConverterTemplateModel instance) =>
    <String, dynamic>{
      'converterName': instance.converterName,
      'innerReturnType': instance.innerReturnType,
    };
