// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepositoryTemplateModelImpl _$$RepositoryTemplateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RepositoryTemplateModelImpl(
      repositoryName: json['repositoryName'] as String,
      buildForClass: json['buildForClass'] as String,
      baseUrl: json['baseUrl'] as String,
      liveBasePath: json['liveBasePath'] as String,
      accessors: (json['accessors'] as List<dynamic>?)
              ?.map((e) => AccessorModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      connectTimeout: json['connectTimeout'] as int,
      receiveTimeout: json['receiveTimeout'] as int,
      sendTimeout: json['sendTimeout'] as int,
    );

Map<String, dynamic> _$$RepositoryTemplateModelImplToJson(
        _$RepositoryTemplateModelImpl instance) =>
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

_$AccessorModelImpl _$$AccessorModelImplFromJson(Map<String, dynamic> json) =>
    _$AccessorModelImpl(
      type: json['type'] as String,
      name: json['name'] as String,
      methodName: json['methodName'] as String,
    );

Map<String, dynamic> _$$AccessorModelImplToJson(_$AccessorModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'methodName': instance.methodName,
    };

_$FreezedTemplateModelImpl _$$FreezedTemplateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FreezedTemplateModelImpl(
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

Map<String, dynamic> _$$FreezedTemplateModelImplToJson(
        _$FreezedTemplateModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'isPaginated': instance.isPaginated,
      'types': instance.types.map((e) => e.toJson()).toList(),
      'annotations': instance.annotations.map((e) => e.toJson()).toList(),
      'isTypesEmpty': instance.isTypesEmpty,
    };

_$TypeModelImpl _$$TypeModelImplFromJson(Map<String, dynamic> json) =>
    _$TypeModelImpl(
      isRequired: json['isRequired'] as bool,
      isNullable: json['isNullable'] as bool,
      defaultValue: json['defaultValue'] as String?,
      type: json['type'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$TypeModelImplToJson(_$TypeModelImpl instance) =>
    <String, dynamic>{
      'isRequired': instance.isRequired,
      'isNullable': instance.isNullable,
      'defaultValue': instance.defaultValue,
      'type': instance.type,
      'name': instance.name,
    };

_$TypedefTemplateModelImpl _$$TypedefTemplateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TypedefTemplateModelImpl(
      type: json['type'] as String,
      name: json['name'] as String,
      hasFilter: json['hasFilter'] as bool? ?? false,
    );

Map<String, dynamic> _$$TypedefTemplateModelImplToJson(
        _$TypedefTemplateModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'name': instance.name,
      'hasFilter': instance.hasFilter,
    };

_$ListRepositoryTemplateModelImpl _$$ListRepositoryTemplateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ListRepositoryTemplateModelImpl(
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

Map<String, dynamic> _$$ListRepositoryTemplateModelImplToJson(
        _$ListRepositoryTemplateModelImpl instance) =>
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

_$DataCubitTemplateModelImpl _$$DataCubitTemplateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DataCubitTemplateModelImpl(
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

Map<String, dynamic> _$$DataCubitTemplateModelImplToJson(
        _$DataCubitTemplateModelImpl instance) =>
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

_$ParamModelImpl _$$ParamModelImplFromJson(Map<String, dynamic> json) =>
    _$ParamModelImpl(
      json['param'] as String,
    );

Map<String, dynamic> _$$ParamModelImplToJson(_$ParamModelImpl instance) =>
    <String, dynamic>{
      'param': instance.param,
    };

_$AnnotationModelImpl _$$AnnotationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnotationModelImpl(
      json['annotation'] as String,
    );

Map<String, dynamic> _$$AnnotationModelImplToJson(
        _$AnnotationModelImpl instance) =>
    <String, dynamic>{
      'annotation': instance.annotation,
    };

_$ArgModelModelImpl _$$ArgModelModelImplFromJson(Map<String, dynamic> json) =>
    _$ArgModelModelImpl(
      json['argType'] as String,
      json['argName'] as String,
      json['isNullableArg'] as bool,
      json['isRequiredArg'] as bool,
    );

Map<String, dynamic> _$$ArgModelModelImplToJson(_$ArgModelModelImpl instance) =>
    <String, dynamic>{
      'argType': instance.argType,
      'argName': instance.argName,
      'isNullableArg': instance.isNullableArg,
      'isRequiredArg': instance.isRequiredArg,
    };

_$MethodModelImpl _$$MethodModelImplFromJson(Map<String, dynamic> json) =>
    _$MethodModelImpl(
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

Map<String, dynamic> _$$MethodModelImplToJson(_$MethodModelImpl instance) =>
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

_$LoaderMethodModelImpl _$$LoaderMethodModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoaderMethodModelImpl(
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
      shouldUseAsList: json['shouldUseAsList'] as bool? ?? false,
    );

Map<String, dynamic> _$$LoaderMethodModelImplToJson(
        _$LoaderMethodModelImpl instance) =>
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

_$LoaderRepositoryTemplateModelImpl
    _$$LoaderRepositoryTemplateModelImplFromJson(Map<String, dynamic> json) =>
        _$LoaderRepositoryTemplateModelImpl(
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

Map<String, dynamic> _$$LoaderRepositoryTemplateModelImplToJson(
        _$LoaderRepositoryTemplateModelImpl instance) =>
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

_$LoaderTemplateModelImpl _$$LoaderTemplateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoaderTemplateModelImpl(
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

Map<String, dynamic> _$$LoaderTemplateModelImplToJson(
        _$LoaderTemplateModelImpl instance) =>
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

_$CubitTemplateModelImpl _$$CubitTemplateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CubitTemplateModelImpl(
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

Map<String, dynamic> _$$CubitTemplateModelImplToJson(
        _$CubitTemplateModelImpl instance) =>
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

_$BuiltListJsonConverterModelImpl _$$BuiltListJsonConverterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BuiltListJsonConverterModelImpl(
      converterName: json['converterName'] as String,
      innerReturnType: json['innerReturnType'] as String,
      shouldCreateConverter: json['shouldCreateConverter'] as bool? ?? true,
    );

Map<String, dynamic> _$$BuiltListJsonConverterModelImplToJson(
        _$BuiltListJsonConverterModelImpl instance) =>
    <String, dynamic>{
      'converterName': instance.converterName,
      'innerReturnType': instance.innerReturnType,
      'shouldCreateConverter': instance.shouldCreateConverter,
    };

_$BuiltListJsonConverterTemplateModelImpl
    _$$BuiltListJsonConverterTemplateModelImplFromJson(
            Map<String, dynamic> json) =>
        _$BuiltListJsonConverterTemplateModelImpl(
          converterName: json['converterName'] as String,
          innerReturnType: json['innerReturnType'] as String,
        );

Map<String, dynamic> _$$BuiltListJsonConverterTemplateModelImplToJson(
        _$BuiltListJsonConverterTemplateModelImpl instance) =>
    <String, dynamic>{
      'converterName': instance.converterName,
      'innerReturnType': instance.innerReturnType,
    };
