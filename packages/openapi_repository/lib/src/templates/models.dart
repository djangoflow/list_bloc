// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class RepositoryTemplateModel with _$RepositoryTemplateModel {
  @JsonSerializable(explicitToJson: true)
  const factory RepositoryTemplateModel({
    required String repositoryName,
    required String baseUrl,
    required String liveBasePath,
    @Default([]) List<AccessorModel> accessors,
    required int connectTimeout,
    required int receiveTimeout,
    required int sendTimeout,
    String? dioInterceptor,
  }) = _RepositoryTemplateModel;

  factory RepositoryTemplateModel.fromJson(Map<String, dynamic> map) =>
      _$RepositoryTemplateModelFromJson(map);
}

@freezed
class AccessorModel with _$AccessorModel {
  const factory AccessorModel({
    required String type,
    required String name,
    required String methodName,
  }) = _AccessorModel;

  factory AccessorModel.fromJson(Map<String, dynamic> map) =>
      _$AccessorModelFromJson(map);
}

/// This model holds data for writing Filter classes
@freezed
class FreezedTemplateModel with _$FreezedTemplateModel {
  @JsonSerializable(explicitToJson: true)
  const factory FreezedTemplateModel({
    required String name,
    @Default(true) bool isPaginated,
    @Default([]) List<TypeModel> types,
    @Default([]) List<AnnotationModel> annotations,
    @Default(false) bool isTypesEmpty,
  }) = _FreezedTemplateModel;

  factory FreezedTemplateModel.fromJson(Map<String, dynamic> map) =>
      _$FreezedTemplateModelFromJson(map);
}

@freezed
class TypeModel with _$TypeModel {
  const factory TypeModel({
    required bool isRequired,
    required bool isNullable,
    String? defaultValue,
    required String type,
    required String name,
  }) = _TypeModel;

  factory TypeModel.fromJson(Map<String, dynamic> map) =>
      _$TypeModelFromJson(map);
}

@freezed
class TypedefTemplateModel with _$TypedefTemplateModel {
  const factory TypedefTemplateModel({
    required String type,
    required String name,
    @Default(false) bool hasFilter,
  }) = _TypedefTemplateModel;

  factory TypedefTemplateModel.fromJson(Map<String, dynamic> map) =>
      _$TypedefTemplateModelFromJson(map);
}

@freezed
class ListRepositoryTemplateModel with _$ListRepositoryTemplateModel {
  @JsonSerializable(explicitToJson: true)
  const factory ListRepositoryTemplateModel({
    required String api,
    required String name,
    @Default(false) hasRequiredParam,
    @Default(false) bool isInline,
    required List<MethodModel> crudMethods,
    required String methodName,
    required String returnType,
    @Default(false) bool hasFilter,
    @Default([]) List<ParamModel> additionalParams,
    @Default([]) List<ParamModel> filterParams,
  }) = _ListRepositoryTemplateModel;

  factory ListRepositoryTemplateModel.fromJson(Map<String, dynamic> map) =>
      _$ListRepositoryTemplateModelFromJson(map);
}

@freezed
class DataCubitTemplateModel with _$DataCubitTemplateModel {
  @JsonSerializable(explicitToJson: true)
  const factory DataCubitTemplateModel({
    required String api,
    required String name,
    @Default(false) hasRequiredParam,
    @Default(false) bool isInline,
    required List<MethodModel> crudMethods,
    required String methodName,
    required String returnType,
    @Default([]) List<ParamModel> additionalParams,
  }) = _DataCubitTemplateModel;

  factory DataCubitTemplateModel.fromJson(Map<String, dynamic> map) =>
      _$DataCubitTemplateModelFromJson(map);
}

@freezed
class ParamModel with _$ParamModel {
  const factory ParamModel(String param) = _ParamModel;

  factory ParamModel.fromJson(Map<String, dynamic> map) =>
      _$ParamModelFromJson(map);
}

@freezed
class AnnotationModel with _$AnnotationModel {
  const factory AnnotationModel(String annotation) = _AnnotationModel;

  factory AnnotationModel.fromJson(Map<String, dynamic> map) =>
      _$AnnotationModelFromJson(map);
}

@freezed
class ArgModel with _$ArgModel {
  const factory ArgModel(String argType, String argName, bool isNullableArg,
      bool isRequiredArg) = _ArgModelModel;

  factory ArgModel.fromJson(Map<String, dynamic> map) =>
      _$ArgModelFromJson(map);
}

@freezed
class MethodModel with _$MethodModel {
  @JsonSerializable(explicitToJson: true)
  const factory MethodModel({
    required String returnType,
    required String name,
    required String operation,
    required List<ArgModel> arguments,
    required List<ParamModel> parameters,
    @Default(false) bool isEmptyArgs,
    @Default(false) bool isList,
    @Default(false) bool shouldUseAsList,
    @Default(true) bool shouldDataBlocReload,
  }) = _MethodModel;

  factory MethodModel.fromJson(Map<String, dynamic> map) =>
      _$MethodModelFromJson(map);
}

/// Model for loader methods that will be written in the respective Repository
/// which will be then used used with `DataCubit` or `ListCubit`
@freezed
class LoaderMethodModel with _$LoaderMethodModel {
  @JsonSerializable(explicitToJson: true)
  const factory LoaderMethodModel({
    required String returnType,
    required String nullabilitySuffix,
    required String name,
    required bool hasFilter,
    required bool isListLoader,
    required bool isPaginated,
    required bool hasRequiredParam,
    required List<TypeModel> types,
    required List<ParamModel> filterParams,
    required int defaultOffset,
    required int defaultPageSize,
    @Default(<BuiltListJsonConverterModel>[])
        List<BuiltListJsonConverterModel> builtListConverters,
    @Default(false) bool isInline,
    @Default(false) bool shouldUseAsList,
  }) = _LoaderMethodModel;

  factory LoaderMethodModel.fromJson(Map<String, dynamic> map) =>
      _$LoaderMethodModelFromJson(map);
}

@freezed
class LoaderRepositoryTemplateModel with _$LoaderRepositoryTemplateModel {
  @JsonSerializable(explicitToJson: true)
  const factory LoaderRepositoryTemplateModel({
    LoaderTemplateModel? dataLoader,
    LoaderTemplateModel? listLoader,
    required bool hasDataLoader,
    required bool hasListLoader,
    required List<MethodModel> crudMethods,
    required String repositoryName,
    required String api,
    required String dataLoaderMethodName,
    required String listLoaderMethodName,
    required String dataFilterSuffix,
    required String listFilterSuffix,
  }) = _LoaderRepositoryTemplateModel;

  factory LoaderRepositoryTemplateModel.fromJson(Map<String, dynamic> map) =>
      _$LoaderRepositoryTemplateModelFromJson(map);
}

@freezed
class LoaderTemplateModel with _$LoaderTemplateModel {
  @JsonSerializable(explicitToJson: true)
  const factory LoaderTemplateModel({
    required String api,
    @Default(false) hasRequiredParam,
    @Default(false) bool isInline,
    @Default(false) bool shouldUseAsList,
    required String methodName,
    required String returnType,
    required String returnTypeNullabilitySuffix,
    @Default(false) bool hasFilter,
    @Default([]) List<ParamModel> additionalParams,
    @Default([]) List<ParamModel> filterParams,
  }) = _LoaderTemplateModel;

  factory LoaderTemplateModel.fromJson(Map<String, dynamic> map) =>
      _$LoaderTemplateModelFromJson(map);
}

@freezed
class CubitTemplateModel with _$CubitTemplateModel {
  @JsonSerializable(explicitToJson: true)
  const factory CubitTemplateModel({
    required String name,
    required String returnType,
    @Default(false) bool hasFilter,
    required List<MethodModel> crudMethods,
    required String filterSuffix,
    required String loaderMethodName,
  }) = _CubitTemplateModel;

  factory CubitTemplateModel.fromJson(Map<String, dynamic> map) =>
      _$CubitTemplateModelFromJson(map);
}

@freezed
class BuiltListJsonConverterModel with _$BuiltListJsonConverterModel {
  const factory BuiltListJsonConverterModel({
    required String converterName,
    required String innerReturnType,
    @Default(true) bool shouldCreateConverter,
  }) = _BuiltListJsonConverterModel;

  factory BuiltListJsonConverterModel.fromJson(Map<String, dynamic> map) =>
      _$BuiltListJsonConverterModelFromJson(map);
}

@freezed
class BuiltListJsonConverterTemplateModel
    with _$BuiltListJsonConverterTemplateModel {
  const factory BuiltListJsonConverterTemplateModel({
    required String converterName,
    required String innerReturnType,
  }) = _BuiltListJsonConverterTemplateModel;

  factory BuiltListJsonConverterTemplateModel.fromJson(
          Map<String, dynamic> map) =>
      _$BuiltListJsonConverterTemplateModelFromJson(map);
}
