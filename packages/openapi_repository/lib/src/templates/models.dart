// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:analyzer/dart/element/element.dart';
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

@freezed
class FreezedTemplateModel with _$FreezedTemplateModel {
  @JsonSerializable(explicitToJson: true)
  const factory FreezedTemplateModel({
    required String name,
    @Default(true) bool isPaginated,
    @Default([]) List<TypeModel> types,
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
  }) = _MethodModel;

  factory MethodModel.fromJson(Map<String, dynamic> map) =>
      _$MethodModelFromJson(map);
}

@freezed
class LoaderMethodModel with _$LoaderMethodModel {
  @JsonSerializable(explicitToJson: true)
  const factory LoaderMethodModel({
    required String returnType,
    required String name,
    required bool hasFilter,
    required bool isListLoader,
    required bool isPaginated,
    required bool hasRequiredParam,
    required List<TypeModel> types,
    required List<ParamModel> filterParams,
    required int defaultOffset,
    required int defaultPageSize,
    @Default(false) bool isInline,
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
    required String methodName,
    required String returnType,
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
  }) = _CubitTemplateModel;

  factory CubitTemplateModel.fromJson(Map<String, dynamic> map) =>
      _$CubitTemplateModelFromJson(map);
}
