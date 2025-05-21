// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RepositoryTemplateModel {
  String get repositoryName;
  String get buildForClass;
  String get baseUrl;
  String get liveBasePath;
  List<AccessorModel> get accessors;
  int get connectTimeout;
  int get receiveTimeout;
  int get sendTimeout;

  /// Create a copy of RepositoryTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RepositoryTemplateModelCopyWith<RepositoryTemplateModel> get copyWith =>
      _$RepositoryTemplateModelCopyWithImpl<RepositoryTemplateModel>(
          this as RepositoryTemplateModel, _$identity);

  /// Serializes this RepositoryTemplateModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RepositoryTemplateModel &&
            (identical(other.repositoryName, repositoryName) ||
                other.repositoryName == repositoryName) &&
            (identical(other.buildForClass, buildForClass) ||
                other.buildForClass == buildForClass) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.liveBasePath, liveBasePath) ||
                other.liveBasePath == liveBasePath) &&
            const DeepCollectionEquality().equals(other.accessors, accessors) &&
            (identical(other.connectTimeout, connectTimeout) ||
                other.connectTimeout == connectTimeout) &&
            (identical(other.receiveTimeout, receiveTimeout) ||
                other.receiveTimeout == receiveTimeout) &&
            (identical(other.sendTimeout, sendTimeout) ||
                other.sendTimeout == sendTimeout));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      repositoryName,
      buildForClass,
      baseUrl,
      liveBasePath,
      const DeepCollectionEquality().hash(accessors),
      connectTimeout,
      receiveTimeout,
      sendTimeout);

  @override
  String toString() {
    return 'RepositoryTemplateModel(repositoryName: $repositoryName, buildForClass: $buildForClass, baseUrl: $baseUrl, liveBasePath: $liveBasePath, accessors: $accessors, connectTimeout: $connectTimeout, receiveTimeout: $receiveTimeout, sendTimeout: $sendTimeout)';
  }
}

/// @nodoc
abstract mixin class $RepositoryTemplateModelCopyWith<$Res> {
  factory $RepositoryTemplateModelCopyWith(RepositoryTemplateModel value,
          $Res Function(RepositoryTemplateModel) _then) =
      _$RepositoryTemplateModelCopyWithImpl;
  @useResult
  $Res call(
      {String repositoryName,
      String buildForClass,
      String baseUrl,
      String liveBasePath,
      List<AccessorModel> accessors,
      int connectTimeout,
      int receiveTimeout,
      int sendTimeout});
}

/// @nodoc
class _$RepositoryTemplateModelCopyWithImpl<$Res>
    implements $RepositoryTemplateModelCopyWith<$Res> {
  _$RepositoryTemplateModelCopyWithImpl(this._self, this._then);

  final RepositoryTemplateModel _self;
  final $Res Function(RepositoryTemplateModel) _then;

  /// Create a copy of RepositoryTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositoryName = null,
    Object? buildForClass = null,
    Object? baseUrl = null,
    Object? liveBasePath = null,
    Object? accessors = null,
    Object? connectTimeout = null,
    Object? receiveTimeout = null,
    Object? sendTimeout = null,
  }) {
    return _then(_self.copyWith(
      repositoryName: null == repositoryName
          ? _self.repositoryName
          : repositoryName // ignore: cast_nullable_to_non_nullable
              as String,
      buildForClass: null == buildForClass
          ? _self.buildForClass
          : buildForClass // ignore: cast_nullable_to_non_nullable
              as String,
      baseUrl: null == baseUrl
          ? _self.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      liveBasePath: null == liveBasePath
          ? _self.liveBasePath
          : liveBasePath // ignore: cast_nullable_to_non_nullable
              as String,
      accessors: null == accessors
          ? _self.accessors
          : accessors // ignore: cast_nullable_to_non_nullable
              as List<AccessorModel>,
      connectTimeout: null == connectTimeout
          ? _self.connectTimeout
          : connectTimeout // ignore: cast_nullable_to_non_nullable
              as int,
      receiveTimeout: null == receiveTimeout
          ? _self.receiveTimeout
          : receiveTimeout // ignore: cast_nullable_to_non_nullable
              as int,
      sendTimeout: null == sendTimeout
          ? _self.sendTimeout
          : sendTimeout // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _RepositoryTemplateModel implements RepositoryTemplateModel {
  const _RepositoryTemplateModel(
      {required this.repositoryName,
      required this.buildForClass,
      required this.baseUrl,
      required this.liveBasePath,
      final List<AccessorModel> accessors = const [],
      required this.connectTimeout,
      required this.receiveTimeout,
      required this.sendTimeout})
      : _accessors = accessors;
  factory _RepositoryTemplateModel.fromJson(Map<String, dynamic> json) =>
      _$RepositoryTemplateModelFromJson(json);

  @override
  final String repositoryName;
  @override
  final String buildForClass;
  @override
  final String baseUrl;
  @override
  final String liveBasePath;
  final List<AccessorModel> _accessors;
  @override
  @JsonKey()
  List<AccessorModel> get accessors {
    if (_accessors is EqualUnmodifiableListView) return _accessors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accessors);
  }

  @override
  final int connectTimeout;
  @override
  final int receiveTimeout;
  @override
  final int sendTimeout;

  /// Create a copy of RepositoryTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RepositoryTemplateModelCopyWith<_RepositoryTemplateModel> get copyWith =>
      __$RepositoryTemplateModelCopyWithImpl<_RepositoryTemplateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RepositoryTemplateModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RepositoryTemplateModel &&
            (identical(other.repositoryName, repositoryName) ||
                other.repositoryName == repositoryName) &&
            (identical(other.buildForClass, buildForClass) ||
                other.buildForClass == buildForClass) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.liveBasePath, liveBasePath) ||
                other.liveBasePath == liveBasePath) &&
            const DeepCollectionEquality()
                .equals(other._accessors, _accessors) &&
            (identical(other.connectTimeout, connectTimeout) ||
                other.connectTimeout == connectTimeout) &&
            (identical(other.receiveTimeout, receiveTimeout) ||
                other.receiveTimeout == receiveTimeout) &&
            (identical(other.sendTimeout, sendTimeout) ||
                other.sendTimeout == sendTimeout));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      repositoryName,
      buildForClass,
      baseUrl,
      liveBasePath,
      const DeepCollectionEquality().hash(_accessors),
      connectTimeout,
      receiveTimeout,
      sendTimeout);

  @override
  String toString() {
    return 'RepositoryTemplateModel(repositoryName: $repositoryName, buildForClass: $buildForClass, baseUrl: $baseUrl, liveBasePath: $liveBasePath, accessors: $accessors, connectTimeout: $connectTimeout, receiveTimeout: $receiveTimeout, sendTimeout: $sendTimeout)';
  }
}

/// @nodoc
abstract mixin class _$RepositoryTemplateModelCopyWith<$Res>
    implements $RepositoryTemplateModelCopyWith<$Res> {
  factory _$RepositoryTemplateModelCopyWith(_RepositoryTemplateModel value,
          $Res Function(_RepositoryTemplateModel) _then) =
      __$RepositoryTemplateModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String repositoryName,
      String buildForClass,
      String baseUrl,
      String liveBasePath,
      List<AccessorModel> accessors,
      int connectTimeout,
      int receiveTimeout,
      int sendTimeout});
}

/// @nodoc
class __$RepositoryTemplateModelCopyWithImpl<$Res>
    implements _$RepositoryTemplateModelCopyWith<$Res> {
  __$RepositoryTemplateModelCopyWithImpl(this._self, this._then);

  final _RepositoryTemplateModel _self;
  final $Res Function(_RepositoryTemplateModel) _then;

  /// Create a copy of RepositoryTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? repositoryName = null,
    Object? buildForClass = null,
    Object? baseUrl = null,
    Object? liveBasePath = null,
    Object? accessors = null,
    Object? connectTimeout = null,
    Object? receiveTimeout = null,
    Object? sendTimeout = null,
  }) {
    return _then(_RepositoryTemplateModel(
      repositoryName: null == repositoryName
          ? _self.repositoryName
          : repositoryName // ignore: cast_nullable_to_non_nullable
              as String,
      buildForClass: null == buildForClass
          ? _self.buildForClass
          : buildForClass // ignore: cast_nullable_to_non_nullable
              as String,
      baseUrl: null == baseUrl
          ? _self.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      liveBasePath: null == liveBasePath
          ? _self.liveBasePath
          : liveBasePath // ignore: cast_nullable_to_non_nullable
              as String,
      accessors: null == accessors
          ? _self._accessors
          : accessors // ignore: cast_nullable_to_non_nullable
              as List<AccessorModel>,
      connectTimeout: null == connectTimeout
          ? _self.connectTimeout
          : connectTimeout // ignore: cast_nullable_to_non_nullable
              as int,
      receiveTimeout: null == receiveTimeout
          ? _self.receiveTimeout
          : receiveTimeout // ignore: cast_nullable_to_non_nullable
              as int,
      sendTimeout: null == sendTimeout
          ? _self.sendTimeout
          : sendTimeout // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$AccessorModel {
  String get type;
  String get name;
  String get methodName;

  /// Create a copy of AccessorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AccessorModelCopyWith<AccessorModel> get copyWith =>
      _$AccessorModelCopyWithImpl<AccessorModel>(
          this as AccessorModel, _$identity);

  /// Serializes this AccessorModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AccessorModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.methodName, methodName) ||
                other.methodName == methodName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, name, methodName);

  @override
  String toString() {
    return 'AccessorModel(type: $type, name: $name, methodName: $methodName)';
  }
}

/// @nodoc
abstract mixin class $AccessorModelCopyWith<$Res> {
  factory $AccessorModelCopyWith(
          AccessorModel value, $Res Function(AccessorModel) _then) =
      _$AccessorModelCopyWithImpl;
  @useResult
  $Res call({String type, String name, String methodName});
}

/// @nodoc
class _$AccessorModelCopyWithImpl<$Res>
    implements $AccessorModelCopyWith<$Res> {
  _$AccessorModelCopyWithImpl(this._self, this._then);

  final AccessorModel _self;
  final $Res Function(AccessorModel) _then;

  /// Create a copy of AccessorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? methodName = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      methodName: null == methodName
          ? _self.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AccessorModel implements AccessorModel {
  const _AccessorModel(
      {required this.type, required this.name, required this.methodName});
  factory _AccessorModel.fromJson(Map<String, dynamic> json) =>
      _$AccessorModelFromJson(json);

  @override
  final String type;
  @override
  final String name;
  @override
  final String methodName;

  /// Create a copy of AccessorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AccessorModelCopyWith<_AccessorModel> get copyWith =>
      __$AccessorModelCopyWithImpl<_AccessorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AccessorModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccessorModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.methodName, methodName) ||
                other.methodName == methodName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, name, methodName);

  @override
  String toString() {
    return 'AccessorModel(type: $type, name: $name, methodName: $methodName)';
  }
}

/// @nodoc
abstract mixin class _$AccessorModelCopyWith<$Res>
    implements $AccessorModelCopyWith<$Res> {
  factory _$AccessorModelCopyWith(
          _AccessorModel value, $Res Function(_AccessorModel) _then) =
      __$AccessorModelCopyWithImpl;
  @override
  @useResult
  $Res call({String type, String name, String methodName});
}

/// @nodoc
class __$AccessorModelCopyWithImpl<$Res>
    implements _$AccessorModelCopyWith<$Res> {
  __$AccessorModelCopyWithImpl(this._self, this._then);

  final _AccessorModel _self;
  final $Res Function(_AccessorModel) _then;

  /// Create a copy of AccessorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? methodName = null,
  }) {
    return _then(_AccessorModel(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      methodName: null == methodName
          ? _self.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$FreezedTemplateModel {
  String get name;
  bool get isPaginated;
  List<TypeModel> get types;
  List<AnnotationModel> get annotations;
  bool get isTypesEmpty;

  /// Create a copy of FreezedTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FreezedTemplateModelCopyWith<FreezedTemplateModel> get copyWith =>
      _$FreezedTemplateModelCopyWithImpl<FreezedTemplateModel>(
          this as FreezedTemplateModel, _$identity);

  /// Serializes this FreezedTemplateModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FreezedTemplateModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isPaginated, isPaginated) ||
                other.isPaginated == isPaginated) &&
            const DeepCollectionEquality().equals(other.types, types) &&
            const DeepCollectionEquality()
                .equals(other.annotations, annotations) &&
            (identical(other.isTypesEmpty, isTypesEmpty) ||
                other.isTypesEmpty == isTypesEmpty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      isPaginated,
      const DeepCollectionEquality().hash(types),
      const DeepCollectionEquality().hash(annotations),
      isTypesEmpty);

  @override
  String toString() {
    return 'FreezedTemplateModel(name: $name, isPaginated: $isPaginated, types: $types, annotations: $annotations, isTypesEmpty: $isTypesEmpty)';
  }
}

/// @nodoc
abstract mixin class $FreezedTemplateModelCopyWith<$Res> {
  factory $FreezedTemplateModelCopyWith(FreezedTemplateModel value,
          $Res Function(FreezedTemplateModel) _then) =
      _$FreezedTemplateModelCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      bool isPaginated,
      List<TypeModel> types,
      List<AnnotationModel> annotations,
      bool isTypesEmpty});
}

/// @nodoc
class _$FreezedTemplateModelCopyWithImpl<$Res>
    implements $FreezedTemplateModelCopyWith<$Res> {
  _$FreezedTemplateModelCopyWithImpl(this._self, this._then);

  final FreezedTemplateModel _self;
  final $Res Function(FreezedTemplateModel) _then;

  /// Create a copy of FreezedTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isPaginated = null,
    Object? types = null,
    Object? annotations = null,
    Object? isTypesEmpty = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isPaginated: null == isPaginated
          ? _self.isPaginated
          : isPaginated // ignore: cast_nullable_to_non_nullable
              as bool,
      types: null == types
          ? _self.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeModel>,
      annotations: null == annotations
          ? _self.annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as List<AnnotationModel>,
      isTypesEmpty: null == isTypesEmpty
          ? _self.isTypesEmpty
          : isTypesEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _FreezedTemplateModel implements FreezedTemplateModel {
  const _FreezedTemplateModel(
      {required this.name,
      this.isPaginated = true,
      final List<TypeModel> types = const [],
      final List<AnnotationModel> annotations = const [],
      this.isTypesEmpty = false})
      : _types = types,
        _annotations = annotations;
  factory _FreezedTemplateModel.fromJson(Map<String, dynamic> json) =>
      _$FreezedTemplateModelFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final bool isPaginated;
  final List<TypeModel> _types;
  @override
  @JsonKey()
  List<TypeModel> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<AnnotationModel> _annotations;
  @override
  @JsonKey()
  List<AnnotationModel> get annotations {
    if (_annotations is EqualUnmodifiableListView) return _annotations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_annotations);
  }

  @override
  @JsonKey()
  final bool isTypesEmpty;

  /// Create a copy of FreezedTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FreezedTemplateModelCopyWith<_FreezedTemplateModel> get copyWith =>
      __$FreezedTemplateModelCopyWithImpl<_FreezedTemplateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FreezedTemplateModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FreezedTemplateModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isPaginated, isPaginated) ||
                other.isPaginated == isPaginated) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality()
                .equals(other._annotations, _annotations) &&
            (identical(other.isTypesEmpty, isTypesEmpty) ||
                other.isTypesEmpty == isTypesEmpty));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      isPaginated,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_annotations),
      isTypesEmpty);

  @override
  String toString() {
    return 'FreezedTemplateModel(name: $name, isPaginated: $isPaginated, types: $types, annotations: $annotations, isTypesEmpty: $isTypesEmpty)';
  }
}

/// @nodoc
abstract mixin class _$FreezedTemplateModelCopyWith<$Res>
    implements $FreezedTemplateModelCopyWith<$Res> {
  factory _$FreezedTemplateModelCopyWith(_FreezedTemplateModel value,
          $Res Function(_FreezedTemplateModel) _then) =
      __$FreezedTemplateModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      bool isPaginated,
      List<TypeModel> types,
      List<AnnotationModel> annotations,
      bool isTypesEmpty});
}

/// @nodoc
class __$FreezedTemplateModelCopyWithImpl<$Res>
    implements _$FreezedTemplateModelCopyWith<$Res> {
  __$FreezedTemplateModelCopyWithImpl(this._self, this._then);

  final _FreezedTemplateModel _self;
  final $Res Function(_FreezedTemplateModel) _then;

  /// Create a copy of FreezedTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? isPaginated = null,
    Object? types = null,
    Object? annotations = null,
    Object? isTypesEmpty = null,
  }) {
    return _then(_FreezedTemplateModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isPaginated: null == isPaginated
          ? _self.isPaginated
          : isPaginated // ignore: cast_nullable_to_non_nullable
              as bool,
      types: null == types
          ? _self._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeModel>,
      annotations: null == annotations
          ? _self._annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as List<AnnotationModel>,
      isTypesEmpty: null == isTypesEmpty
          ? _self.isTypesEmpty
          : isTypesEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$TypeModel {
  bool get isRequired;
  bool get isNullable;
  String? get defaultValue;
  String get type;
  String get name;

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TypeModelCopyWith<TypeModel> get copyWith =>
      _$TypeModelCopyWithImpl<TypeModel>(this as TypeModel, _$identity);

  /// Serializes this TypeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TypeModel &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.isNullable, isNullable) ||
                other.isNullable == isNullable) &&
            (identical(other.defaultValue, defaultValue) ||
                other.defaultValue == defaultValue) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, isRequired, isNullable, defaultValue, type, name);

  @override
  String toString() {
    return 'TypeModel(isRequired: $isRequired, isNullable: $isNullable, defaultValue: $defaultValue, type: $type, name: $name)';
  }
}

/// @nodoc
abstract mixin class $TypeModelCopyWith<$Res> {
  factory $TypeModelCopyWith(TypeModel value, $Res Function(TypeModel) _then) =
      _$TypeModelCopyWithImpl;
  @useResult
  $Res call(
      {bool isRequired,
      bool isNullable,
      String? defaultValue,
      String type,
      String name});
}

/// @nodoc
class _$TypeModelCopyWithImpl<$Res> implements $TypeModelCopyWith<$Res> {
  _$TypeModelCopyWithImpl(this._self, this._then);

  final TypeModel _self;
  final $Res Function(TypeModel) _then;

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRequired = null,
    Object? isNullable = null,
    Object? defaultValue = freezed,
    Object? type = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      isRequired: null == isRequired
          ? _self.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      isNullable: null == isNullable
          ? _self.isNullable
          : isNullable // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultValue: freezed == defaultValue
          ? _self.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TypeModel implements TypeModel {
  const _TypeModel(
      {required this.isRequired,
      required this.isNullable,
      this.defaultValue,
      required this.type,
      required this.name});
  factory _TypeModel.fromJson(Map<String, dynamic> json) =>
      _$TypeModelFromJson(json);

  @override
  final bool isRequired;
  @override
  final bool isNullable;
  @override
  final String? defaultValue;
  @override
  final String type;
  @override
  final String name;

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TypeModelCopyWith<_TypeModel> get copyWith =>
      __$TypeModelCopyWithImpl<_TypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TypeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TypeModel &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.isNullable, isNullable) ||
                other.isNullable == isNullable) &&
            (identical(other.defaultValue, defaultValue) ||
                other.defaultValue == defaultValue) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, isRequired, isNullable, defaultValue, type, name);

  @override
  String toString() {
    return 'TypeModel(isRequired: $isRequired, isNullable: $isNullable, defaultValue: $defaultValue, type: $type, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$TypeModelCopyWith<$Res>
    implements $TypeModelCopyWith<$Res> {
  factory _$TypeModelCopyWith(
          _TypeModel value, $Res Function(_TypeModel) _then) =
      __$TypeModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isRequired,
      bool isNullable,
      String? defaultValue,
      String type,
      String name});
}

/// @nodoc
class __$TypeModelCopyWithImpl<$Res> implements _$TypeModelCopyWith<$Res> {
  __$TypeModelCopyWithImpl(this._self, this._then);

  final _TypeModel _self;
  final $Res Function(_TypeModel) _then;

  /// Create a copy of TypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isRequired = null,
    Object? isNullable = null,
    Object? defaultValue = freezed,
    Object? type = null,
    Object? name = null,
  }) {
    return _then(_TypeModel(
      isRequired: null == isRequired
          ? _self.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      isNullable: null == isNullable
          ? _self.isNullable
          : isNullable // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultValue: freezed == defaultValue
          ? _self.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$TypedefTemplateModel {
  String get type;
  String get name;
  bool get hasFilter;

  /// Create a copy of TypedefTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TypedefTemplateModelCopyWith<TypedefTemplateModel> get copyWith =>
      _$TypedefTemplateModelCopyWithImpl<TypedefTemplateModel>(
          this as TypedefTemplateModel, _$identity);

  /// Serializes this TypedefTemplateModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TypedefTemplateModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.hasFilter, hasFilter) ||
                other.hasFilter == hasFilter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, name, hasFilter);

  @override
  String toString() {
    return 'TypedefTemplateModel(type: $type, name: $name, hasFilter: $hasFilter)';
  }
}

/// @nodoc
abstract mixin class $TypedefTemplateModelCopyWith<$Res> {
  factory $TypedefTemplateModelCopyWith(TypedefTemplateModel value,
          $Res Function(TypedefTemplateModel) _then) =
      _$TypedefTemplateModelCopyWithImpl;
  @useResult
  $Res call({String type, String name, bool hasFilter});
}

/// @nodoc
class _$TypedefTemplateModelCopyWithImpl<$Res>
    implements $TypedefTemplateModelCopyWith<$Res> {
  _$TypedefTemplateModelCopyWithImpl(this._self, this._then);

  final TypedefTemplateModel _self;
  final $Res Function(TypedefTemplateModel) _then;

  /// Create a copy of TypedefTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? hasFilter = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasFilter: null == hasFilter
          ? _self.hasFilter
          : hasFilter // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TypedefTemplateModel implements TypedefTemplateModel {
  const _TypedefTemplateModel(
      {required this.type, required this.name, this.hasFilter = false});
  factory _TypedefTemplateModel.fromJson(Map<String, dynamic> json) =>
      _$TypedefTemplateModelFromJson(json);

  @override
  final String type;
  @override
  final String name;
  @override
  @JsonKey()
  final bool hasFilter;

  /// Create a copy of TypedefTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TypedefTemplateModelCopyWith<_TypedefTemplateModel> get copyWith =>
      __$TypedefTemplateModelCopyWithImpl<_TypedefTemplateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TypedefTemplateModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TypedefTemplateModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.hasFilter, hasFilter) ||
                other.hasFilter == hasFilter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, name, hasFilter);

  @override
  String toString() {
    return 'TypedefTemplateModel(type: $type, name: $name, hasFilter: $hasFilter)';
  }
}

/// @nodoc
abstract mixin class _$TypedefTemplateModelCopyWith<$Res>
    implements $TypedefTemplateModelCopyWith<$Res> {
  factory _$TypedefTemplateModelCopyWith(_TypedefTemplateModel value,
          $Res Function(_TypedefTemplateModel) _then) =
      __$TypedefTemplateModelCopyWithImpl;
  @override
  @useResult
  $Res call({String type, String name, bool hasFilter});
}

/// @nodoc
class __$TypedefTemplateModelCopyWithImpl<$Res>
    implements _$TypedefTemplateModelCopyWith<$Res> {
  __$TypedefTemplateModelCopyWithImpl(this._self, this._then);

  final _TypedefTemplateModel _self;
  final $Res Function(_TypedefTemplateModel) _then;

  /// Create a copy of TypedefTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? hasFilter = null,
  }) {
    return _then(_TypedefTemplateModel(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasFilter: null == hasFilter
          ? _self.hasFilter
          : hasFilter // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$ListRepositoryTemplateModel {
  String get api;
  String get name;
  dynamic get hasRequiredParam;
  bool get isInline;
  List<MethodModel> get crudMethods;
  String get methodName;
  String get returnType;
  bool get hasFilter;
  List<ParamModel> get additionalParams;
  List<ParamModel> get filterParams;

  /// Create a copy of ListRepositoryTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListRepositoryTemplateModelCopyWith<ListRepositoryTemplateModel>
      get copyWith => _$ListRepositoryTemplateModelCopyWithImpl<
              ListRepositoryTemplateModel>(
          this as ListRepositoryTemplateModel, _$identity);

  /// Serializes this ListRepositoryTemplateModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListRepositoryTemplateModel &&
            (identical(other.api, api) || other.api == api) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.hasRequiredParam, hasRequiredParam) &&
            (identical(other.isInline, isInline) ||
                other.isInline == isInline) &&
            const DeepCollectionEquality()
                .equals(other.crudMethods, crudMethods) &&
            (identical(other.methodName, methodName) ||
                other.methodName == methodName) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.hasFilter, hasFilter) ||
                other.hasFilter == hasFilter) &&
            const DeepCollectionEquality()
                .equals(other.additionalParams, additionalParams) &&
            const DeepCollectionEquality()
                .equals(other.filterParams, filterParams));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      api,
      name,
      const DeepCollectionEquality().hash(hasRequiredParam),
      isInline,
      const DeepCollectionEquality().hash(crudMethods),
      methodName,
      returnType,
      hasFilter,
      const DeepCollectionEquality().hash(additionalParams),
      const DeepCollectionEquality().hash(filterParams));

  @override
  String toString() {
    return 'ListRepositoryTemplateModel(api: $api, name: $name, hasRequiredParam: $hasRequiredParam, isInline: $isInline, crudMethods: $crudMethods, methodName: $methodName, returnType: $returnType, hasFilter: $hasFilter, additionalParams: $additionalParams, filterParams: $filterParams)';
  }
}

/// @nodoc
abstract mixin class $ListRepositoryTemplateModelCopyWith<$Res> {
  factory $ListRepositoryTemplateModelCopyWith(
          ListRepositoryTemplateModel value,
          $Res Function(ListRepositoryTemplateModel) _then) =
      _$ListRepositoryTemplateModelCopyWithImpl;
  @useResult
  $Res call(
      {String api,
      String name,
      dynamic hasRequiredParam,
      bool isInline,
      List<MethodModel> crudMethods,
      String methodName,
      String returnType,
      bool hasFilter,
      List<ParamModel> additionalParams,
      List<ParamModel> filterParams});
}

/// @nodoc
class _$ListRepositoryTemplateModelCopyWithImpl<$Res>
    implements $ListRepositoryTemplateModelCopyWith<$Res> {
  _$ListRepositoryTemplateModelCopyWithImpl(this._self, this._then);

  final ListRepositoryTemplateModel _self;
  final $Res Function(ListRepositoryTemplateModel) _then;

  /// Create a copy of ListRepositoryTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? api = null,
    Object? name = null,
    Object? hasRequiredParam = freezed,
    Object? isInline = null,
    Object? crudMethods = null,
    Object? methodName = null,
    Object? returnType = null,
    Object? hasFilter = null,
    Object? additionalParams = null,
    Object? filterParams = null,
  }) {
    return _then(_self.copyWith(
      api: null == api
          ? _self.api
          : api // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasRequiredParam: freezed == hasRequiredParam
          ? _self.hasRequiredParam
          : hasRequiredParam // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isInline: null == isInline
          ? _self.isInline
          : isInline // ignore: cast_nullable_to_non_nullable
              as bool,
      crudMethods: null == crudMethods
          ? _self.crudMethods
          : crudMethods // ignore: cast_nullable_to_non_nullable
              as List<MethodModel>,
      methodName: null == methodName
          ? _self.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String,
      returnType: null == returnType
          ? _self.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String,
      hasFilter: null == hasFilter
          ? _self.hasFilter
          : hasFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      additionalParams: null == additionalParams
          ? _self.additionalParams
          : additionalParams // ignore: cast_nullable_to_non_nullable
              as List<ParamModel>,
      filterParams: null == filterParams
          ? _self.filterParams
          : filterParams // ignore: cast_nullable_to_non_nullable
              as List<ParamModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ListRepositoryTemplateModel implements ListRepositoryTemplateModel {
  const _ListRepositoryTemplateModel(
      {required this.api,
      required this.name,
      this.hasRequiredParam = false,
      this.isInline = false,
      required final List<MethodModel> crudMethods,
      required this.methodName,
      required this.returnType,
      this.hasFilter = false,
      final List<ParamModel> additionalParams = const [],
      final List<ParamModel> filterParams = const []})
      : _crudMethods = crudMethods,
        _additionalParams = additionalParams,
        _filterParams = filterParams;
  factory _ListRepositoryTemplateModel.fromJson(Map<String, dynamic> json) =>
      _$ListRepositoryTemplateModelFromJson(json);

  @override
  final String api;
  @override
  final String name;
  @override
  @JsonKey()
  final dynamic hasRequiredParam;
  @override
  @JsonKey()
  final bool isInline;
  final List<MethodModel> _crudMethods;
  @override
  List<MethodModel> get crudMethods {
    if (_crudMethods is EqualUnmodifiableListView) return _crudMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crudMethods);
  }

  @override
  final String methodName;
  @override
  final String returnType;
  @override
  @JsonKey()
  final bool hasFilter;
  final List<ParamModel> _additionalParams;
  @override
  @JsonKey()
  List<ParamModel> get additionalParams {
    if (_additionalParams is EqualUnmodifiableListView)
      return _additionalParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_additionalParams);
  }

  final List<ParamModel> _filterParams;
  @override
  @JsonKey()
  List<ParamModel> get filterParams {
    if (_filterParams is EqualUnmodifiableListView) return _filterParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filterParams);
  }

  /// Create a copy of ListRepositoryTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ListRepositoryTemplateModelCopyWith<_ListRepositoryTemplateModel>
      get copyWith => __$ListRepositoryTemplateModelCopyWithImpl<
          _ListRepositoryTemplateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ListRepositoryTemplateModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListRepositoryTemplateModel &&
            (identical(other.api, api) || other.api == api) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.hasRequiredParam, hasRequiredParam) &&
            (identical(other.isInline, isInline) ||
                other.isInline == isInline) &&
            const DeepCollectionEquality()
                .equals(other._crudMethods, _crudMethods) &&
            (identical(other.methodName, methodName) ||
                other.methodName == methodName) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.hasFilter, hasFilter) ||
                other.hasFilter == hasFilter) &&
            const DeepCollectionEquality()
                .equals(other._additionalParams, _additionalParams) &&
            const DeepCollectionEquality()
                .equals(other._filterParams, _filterParams));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      api,
      name,
      const DeepCollectionEquality().hash(hasRequiredParam),
      isInline,
      const DeepCollectionEquality().hash(_crudMethods),
      methodName,
      returnType,
      hasFilter,
      const DeepCollectionEquality().hash(_additionalParams),
      const DeepCollectionEquality().hash(_filterParams));

  @override
  String toString() {
    return 'ListRepositoryTemplateModel(api: $api, name: $name, hasRequiredParam: $hasRequiredParam, isInline: $isInline, crudMethods: $crudMethods, methodName: $methodName, returnType: $returnType, hasFilter: $hasFilter, additionalParams: $additionalParams, filterParams: $filterParams)';
  }
}

/// @nodoc
abstract mixin class _$ListRepositoryTemplateModelCopyWith<$Res>
    implements $ListRepositoryTemplateModelCopyWith<$Res> {
  factory _$ListRepositoryTemplateModelCopyWith(
          _ListRepositoryTemplateModel value,
          $Res Function(_ListRepositoryTemplateModel) _then) =
      __$ListRepositoryTemplateModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String api,
      String name,
      dynamic hasRequiredParam,
      bool isInline,
      List<MethodModel> crudMethods,
      String methodName,
      String returnType,
      bool hasFilter,
      List<ParamModel> additionalParams,
      List<ParamModel> filterParams});
}

/// @nodoc
class __$ListRepositoryTemplateModelCopyWithImpl<$Res>
    implements _$ListRepositoryTemplateModelCopyWith<$Res> {
  __$ListRepositoryTemplateModelCopyWithImpl(this._self, this._then);

  final _ListRepositoryTemplateModel _self;
  final $Res Function(_ListRepositoryTemplateModel) _then;

  /// Create a copy of ListRepositoryTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? api = null,
    Object? name = null,
    Object? hasRequiredParam = freezed,
    Object? isInline = null,
    Object? crudMethods = null,
    Object? methodName = null,
    Object? returnType = null,
    Object? hasFilter = null,
    Object? additionalParams = null,
    Object? filterParams = null,
  }) {
    return _then(_ListRepositoryTemplateModel(
      api: null == api
          ? _self.api
          : api // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasRequiredParam: freezed == hasRequiredParam
          ? _self.hasRequiredParam
          : hasRequiredParam // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isInline: null == isInline
          ? _self.isInline
          : isInline // ignore: cast_nullable_to_non_nullable
              as bool,
      crudMethods: null == crudMethods
          ? _self._crudMethods
          : crudMethods // ignore: cast_nullable_to_non_nullable
              as List<MethodModel>,
      methodName: null == methodName
          ? _self.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String,
      returnType: null == returnType
          ? _self.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String,
      hasFilter: null == hasFilter
          ? _self.hasFilter
          : hasFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      additionalParams: null == additionalParams
          ? _self._additionalParams
          : additionalParams // ignore: cast_nullable_to_non_nullable
              as List<ParamModel>,
      filterParams: null == filterParams
          ? _self._filterParams
          : filterParams // ignore: cast_nullable_to_non_nullable
              as List<ParamModel>,
    ));
  }
}

/// @nodoc
mixin _$DataCubitTemplateModel {
  String get api;
  String get name;
  dynamic get hasRequiredParam;
  bool get isInline;
  List<MethodModel> get crudMethods;
  String get methodName;
  String get returnType;
  List<ParamModel> get additionalParams;

  /// Create a copy of DataCubitTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DataCubitTemplateModelCopyWith<DataCubitTemplateModel> get copyWith =>
      _$DataCubitTemplateModelCopyWithImpl<DataCubitTemplateModel>(
          this as DataCubitTemplateModel, _$identity);

  /// Serializes this DataCubitTemplateModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DataCubitTemplateModel &&
            (identical(other.api, api) || other.api == api) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.hasRequiredParam, hasRequiredParam) &&
            (identical(other.isInline, isInline) ||
                other.isInline == isInline) &&
            const DeepCollectionEquality()
                .equals(other.crudMethods, crudMethods) &&
            (identical(other.methodName, methodName) ||
                other.methodName == methodName) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            const DeepCollectionEquality()
                .equals(other.additionalParams, additionalParams));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      api,
      name,
      const DeepCollectionEquality().hash(hasRequiredParam),
      isInline,
      const DeepCollectionEquality().hash(crudMethods),
      methodName,
      returnType,
      const DeepCollectionEquality().hash(additionalParams));

  @override
  String toString() {
    return 'DataCubitTemplateModel(api: $api, name: $name, hasRequiredParam: $hasRequiredParam, isInline: $isInline, crudMethods: $crudMethods, methodName: $methodName, returnType: $returnType, additionalParams: $additionalParams)';
  }
}

/// @nodoc
abstract mixin class $DataCubitTemplateModelCopyWith<$Res> {
  factory $DataCubitTemplateModelCopyWith(DataCubitTemplateModel value,
          $Res Function(DataCubitTemplateModel) _then) =
      _$DataCubitTemplateModelCopyWithImpl;
  @useResult
  $Res call(
      {String api,
      String name,
      dynamic hasRequiredParam,
      bool isInline,
      List<MethodModel> crudMethods,
      String methodName,
      String returnType,
      List<ParamModel> additionalParams});
}

/// @nodoc
class _$DataCubitTemplateModelCopyWithImpl<$Res>
    implements $DataCubitTemplateModelCopyWith<$Res> {
  _$DataCubitTemplateModelCopyWithImpl(this._self, this._then);

  final DataCubitTemplateModel _self;
  final $Res Function(DataCubitTemplateModel) _then;

  /// Create a copy of DataCubitTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? api = null,
    Object? name = null,
    Object? hasRequiredParam = freezed,
    Object? isInline = null,
    Object? crudMethods = null,
    Object? methodName = null,
    Object? returnType = null,
    Object? additionalParams = null,
  }) {
    return _then(_self.copyWith(
      api: null == api
          ? _self.api
          : api // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasRequiredParam: freezed == hasRequiredParam
          ? _self.hasRequiredParam
          : hasRequiredParam // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isInline: null == isInline
          ? _self.isInline
          : isInline // ignore: cast_nullable_to_non_nullable
              as bool,
      crudMethods: null == crudMethods
          ? _self.crudMethods
          : crudMethods // ignore: cast_nullable_to_non_nullable
              as List<MethodModel>,
      methodName: null == methodName
          ? _self.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String,
      returnType: null == returnType
          ? _self.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String,
      additionalParams: null == additionalParams
          ? _self.additionalParams
          : additionalParams // ignore: cast_nullable_to_non_nullable
              as List<ParamModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _DataCubitTemplateModel implements DataCubitTemplateModel {
  const _DataCubitTemplateModel(
      {required this.api,
      required this.name,
      this.hasRequiredParam = false,
      this.isInline = false,
      required final List<MethodModel> crudMethods,
      required this.methodName,
      required this.returnType,
      final List<ParamModel> additionalParams = const []})
      : _crudMethods = crudMethods,
        _additionalParams = additionalParams;
  factory _DataCubitTemplateModel.fromJson(Map<String, dynamic> json) =>
      _$DataCubitTemplateModelFromJson(json);

  @override
  final String api;
  @override
  final String name;
  @override
  @JsonKey()
  final dynamic hasRequiredParam;
  @override
  @JsonKey()
  final bool isInline;
  final List<MethodModel> _crudMethods;
  @override
  List<MethodModel> get crudMethods {
    if (_crudMethods is EqualUnmodifiableListView) return _crudMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crudMethods);
  }

  @override
  final String methodName;
  @override
  final String returnType;
  final List<ParamModel> _additionalParams;
  @override
  @JsonKey()
  List<ParamModel> get additionalParams {
    if (_additionalParams is EqualUnmodifiableListView)
      return _additionalParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_additionalParams);
  }

  /// Create a copy of DataCubitTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DataCubitTemplateModelCopyWith<_DataCubitTemplateModel> get copyWith =>
      __$DataCubitTemplateModelCopyWithImpl<_DataCubitTemplateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DataCubitTemplateModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DataCubitTemplateModel &&
            (identical(other.api, api) || other.api == api) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.hasRequiredParam, hasRequiredParam) &&
            (identical(other.isInline, isInline) ||
                other.isInline == isInline) &&
            const DeepCollectionEquality()
                .equals(other._crudMethods, _crudMethods) &&
            (identical(other.methodName, methodName) ||
                other.methodName == methodName) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            const DeepCollectionEquality()
                .equals(other._additionalParams, _additionalParams));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      api,
      name,
      const DeepCollectionEquality().hash(hasRequiredParam),
      isInline,
      const DeepCollectionEquality().hash(_crudMethods),
      methodName,
      returnType,
      const DeepCollectionEquality().hash(_additionalParams));

  @override
  String toString() {
    return 'DataCubitTemplateModel(api: $api, name: $name, hasRequiredParam: $hasRequiredParam, isInline: $isInline, crudMethods: $crudMethods, methodName: $methodName, returnType: $returnType, additionalParams: $additionalParams)';
  }
}

/// @nodoc
abstract mixin class _$DataCubitTemplateModelCopyWith<$Res>
    implements $DataCubitTemplateModelCopyWith<$Res> {
  factory _$DataCubitTemplateModelCopyWith(_DataCubitTemplateModel value,
          $Res Function(_DataCubitTemplateModel) _then) =
      __$DataCubitTemplateModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String api,
      String name,
      dynamic hasRequiredParam,
      bool isInline,
      List<MethodModel> crudMethods,
      String methodName,
      String returnType,
      List<ParamModel> additionalParams});
}

/// @nodoc
class __$DataCubitTemplateModelCopyWithImpl<$Res>
    implements _$DataCubitTemplateModelCopyWith<$Res> {
  __$DataCubitTemplateModelCopyWithImpl(this._self, this._then);

  final _DataCubitTemplateModel _self;
  final $Res Function(_DataCubitTemplateModel) _then;

  /// Create a copy of DataCubitTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? api = null,
    Object? name = null,
    Object? hasRequiredParam = freezed,
    Object? isInline = null,
    Object? crudMethods = null,
    Object? methodName = null,
    Object? returnType = null,
    Object? additionalParams = null,
  }) {
    return _then(_DataCubitTemplateModel(
      api: null == api
          ? _self.api
          : api // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasRequiredParam: freezed == hasRequiredParam
          ? _self.hasRequiredParam
          : hasRequiredParam // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isInline: null == isInline
          ? _self.isInline
          : isInline // ignore: cast_nullable_to_non_nullable
              as bool,
      crudMethods: null == crudMethods
          ? _self._crudMethods
          : crudMethods // ignore: cast_nullable_to_non_nullable
              as List<MethodModel>,
      methodName: null == methodName
          ? _self.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String,
      returnType: null == returnType
          ? _self.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String,
      additionalParams: null == additionalParams
          ? _self._additionalParams
          : additionalParams // ignore: cast_nullable_to_non_nullable
              as List<ParamModel>,
    ));
  }
}

/// @nodoc
mixin _$ParamModel {
  String get param;

  /// Create a copy of ParamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ParamModelCopyWith<ParamModel> get copyWith =>
      _$ParamModelCopyWithImpl<ParamModel>(this as ParamModel, _$identity);

  /// Serializes this ParamModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParamModel &&
            (identical(other.param, param) || other.param == param));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, param);

  @override
  String toString() {
    return 'ParamModel(param: $param)';
  }
}

/// @nodoc
abstract mixin class $ParamModelCopyWith<$Res> {
  factory $ParamModelCopyWith(
          ParamModel value, $Res Function(ParamModel) _then) =
      _$ParamModelCopyWithImpl;
  @useResult
  $Res call({String param});
}

/// @nodoc
class _$ParamModelCopyWithImpl<$Res> implements $ParamModelCopyWith<$Res> {
  _$ParamModelCopyWithImpl(this._self, this._then);

  final ParamModel _self;
  final $Res Function(ParamModel) _then;

  /// Create a copy of ParamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? param = null,
  }) {
    return _then(_self.copyWith(
      param: null == param
          ? _self.param
          : param // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ParamModel implements ParamModel {
  const _ParamModel(this.param);
  factory _ParamModel.fromJson(Map<String, dynamic> json) =>
      _$ParamModelFromJson(json);

  @override
  final String param;

  /// Create a copy of ParamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ParamModelCopyWith<_ParamModel> get copyWith =>
      __$ParamModelCopyWithImpl<_ParamModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ParamModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ParamModel &&
            (identical(other.param, param) || other.param == param));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, param);

  @override
  String toString() {
    return 'ParamModel(param: $param)';
  }
}

/// @nodoc
abstract mixin class _$ParamModelCopyWith<$Res>
    implements $ParamModelCopyWith<$Res> {
  factory _$ParamModelCopyWith(
          _ParamModel value, $Res Function(_ParamModel) _then) =
      __$ParamModelCopyWithImpl;
  @override
  @useResult
  $Res call({String param});
}

/// @nodoc
class __$ParamModelCopyWithImpl<$Res> implements _$ParamModelCopyWith<$Res> {
  __$ParamModelCopyWithImpl(this._self, this._then);

  final _ParamModel _self;
  final $Res Function(_ParamModel) _then;

  /// Create a copy of ParamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? param = null,
  }) {
    return _then(_ParamModel(
      null == param
          ? _self.param
          : param // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$AnnotationModel {
  String get annotation;

  /// Create a copy of AnnotationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnnotationModelCopyWith<AnnotationModel> get copyWith =>
      _$AnnotationModelCopyWithImpl<AnnotationModel>(
          this as AnnotationModel, _$identity);

  /// Serializes this AnnotationModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnnotationModel &&
            (identical(other.annotation, annotation) ||
                other.annotation == annotation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, annotation);

  @override
  String toString() {
    return 'AnnotationModel(annotation: $annotation)';
  }
}

/// @nodoc
abstract mixin class $AnnotationModelCopyWith<$Res> {
  factory $AnnotationModelCopyWith(
          AnnotationModel value, $Res Function(AnnotationModel) _then) =
      _$AnnotationModelCopyWithImpl;
  @useResult
  $Res call({String annotation});
}

/// @nodoc
class _$AnnotationModelCopyWithImpl<$Res>
    implements $AnnotationModelCopyWith<$Res> {
  _$AnnotationModelCopyWithImpl(this._self, this._then);

  final AnnotationModel _self;
  final $Res Function(AnnotationModel) _then;

  /// Create a copy of AnnotationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? annotation = null,
  }) {
    return _then(_self.copyWith(
      annotation: null == annotation
          ? _self.annotation
          : annotation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AnnotationModel implements AnnotationModel {
  const _AnnotationModel(this.annotation);
  factory _AnnotationModel.fromJson(Map<String, dynamic> json) =>
      _$AnnotationModelFromJson(json);

  @override
  final String annotation;

  /// Create a copy of AnnotationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnnotationModelCopyWith<_AnnotationModel> get copyWith =>
      __$AnnotationModelCopyWithImpl<_AnnotationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnnotationModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnnotationModel &&
            (identical(other.annotation, annotation) ||
                other.annotation == annotation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, annotation);

  @override
  String toString() {
    return 'AnnotationModel(annotation: $annotation)';
  }
}

/// @nodoc
abstract mixin class _$AnnotationModelCopyWith<$Res>
    implements $AnnotationModelCopyWith<$Res> {
  factory _$AnnotationModelCopyWith(
          _AnnotationModel value, $Res Function(_AnnotationModel) _then) =
      __$AnnotationModelCopyWithImpl;
  @override
  @useResult
  $Res call({String annotation});
}

/// @nodoc
class __$AnnotationModelCopyWithImpl<$Res>
    implements _$AnnotationModelCopyWith<$Res> {
  __$AnnotationModelCopyWithImpl(this._self, this._then);

  final _AnnotationModel _self;
  final $Res Function(_AnnotationModel) _then;

  /// Create a copy of AnnotationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? annotation = null,
  }) {
    return _then(_AnnotationModel(
      null == annotation
          ? _self.annotation
          : annotation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

ArgModel _$ArgModelFromJson(Map<String, dynamic> json) {
  return _ArgModelModel.fromJson(json);
}

/// @nodoc
mixin _$ArgModel {
  String get argType;
  String get argName;
  bool get isNullableArg;
  bool get isRequiredArg;

  /// Create a copy of ArgModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ArgModelCopyWith<ArgModel> get copyWith =>
      _$ArgModelCopyWithImpl<ArgModel>(this as ArgModel, _$identity);

  /// Serializes this ArgModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ArgModel &&
            (identical(other.argType, argType) || other.argType == argType) &&
            (identical(other.argName, argName) || other.argName == argName) &&
            (identical(other.isNullableArg, isNullableArg) ||
                other.isNullableArg == isNullableArg) &&
            (identical(other.isRequiredArg, isRequiredArg) ||
                other.isRequiredArg == isRequiredArg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, argType, argName, isNullableArg, isRequiredArg);

  @override
  String toString() {
    return 'ArgModel(argType: $argType, argName: $argName, isNullableArg: $isNullableArg, isRequiredArg: $isRequiredArg)';
  }
}

/// @nodoc
abstract mixin class $ArgModelCopyWith<$Res> {
  factory $ArgModelCopyWith(ArgModel value, $Res Function(ArgModel) _then) =
      _$ArgModelCopyWithImpl;
  @useResult
  $Res call(
      {String argType, String argName, bool isNullableArg, bool isRequiredArg});
}

/// @nodoc
class _$ArgModelCopyWithImpl<$Res> implements $ArgModelCopyWith<$Res> {
  _$ArgModelCopyWithImpl(this._self, this._then);

  final ArgModel _self;
  final $Res Function(ArgModel) _then;

  /// Create a copy of ArgModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? argType = null,
    Object? argName = null,
    Object? isNullableArg = null,
    Object? isRequiredArg = null,
  }) {
    return _then(_self.copyWith(
      argType: null == argType
          ? _self.argType
          : argType // ignore: cast_nullable_to_non_nullable
              as String,
      argName: null == argName
          ? _self.argName
          : argName // ignore: cast_nullable_to_non_nullable
              as String,
      isNullableArg: null == isNullableArg
          ? _self.isNullableArg
          : isNullableArg // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequiredArg: null == isRequiredArg
          ? _self.isRequiredArg
          : isRequiredArg // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ArgModelModel implements ArgModel {
  const _ArgModelModel(
      this.argType, this.argName, this.isNullableArg, this.isRequiredArg);
  factory _ArgModelModel.fromJson(Map<String, dynamic> json) =>
      _$ArgModelModelFromJson(json);

  @override
  final String argType;
  @override
  final String argName;
  @override
  final bool isNullableArg;
  @override
  final bool isRequiredArg;

  /// Create a copy of ArgModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ArgModelModelCopyWith<_ArgModelModel> get copyWith =>
      __$ArgModelModelCopyWithImpl<_ArgModelModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ArgModelModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArgModelModel &&
            (identical(other.argType, argType) || other.argType == argType) &&
            (identical(other.argName, argName) || other.argName == argName) &&
            (identical(other.isNullableArg, isNullableArg) ||
                other.isNullableArg == isNullableArg) &&
            (identical(other.isRequiredArg, isRequiredArg) ||
                other.isRequiredArg == isRequiredArg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, argType, argName, isNullableArg, isRequiredArg);

  @override
  String toString() {
    return 'ArgModel(argType: $argType, argName: $argName, isNullableArg: $isNullableArg, isRequiredArg: $isRequiredArg)';
  }
}

/// @nodoc
abstract mixin class _$ArgModelModelCopyWith<$Res>
    implements $ArgModelCopyWith<$Res> {
  factory _$ArgModelModelCopyWith(
          _ArgModelModel value, $Res Function(_ArgModelModel) _then) =
      __$ArgModelModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String argType, String argName, bool isNullableArg, bool isRequiredArg});
}

/// @nodoc
class __$ArgModelModelCopyWithImpl<$Res>
    implements _$ArgModelModelCopyWith<$Res> {
  __$ArgModelModelCopyWithImpl(this._self, this._then);

  final _ArgModelModel _self;
  final $Res Function(_ArgModelModel) _then;

  /// Create a copy of ArgModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? argType = null,
    Object? argName = null,
    Object? isNullableArg = null,
    Object? isRequiredArg = null,
  }) {
    return _then(_ArgModelModel(
      null == argType
          ? _self.argType
          : argType // ignore: cast_nullable_to_non_nullable
              as String,
      null == argName
          ? _self.argName
          : argName // ignore: cast_nullable_to_non_nullable
              as String,
      null == isNullableArg
          ? _self.isNullableArg
          : isNullableArg // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isRequiredArg
          ? _self.isRequiredArg
          : isRequiredArg // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$MethodModel {
  String get returnType;
  String get name;
  String get operation;
  List<ArgModel> get arguments;
  List<ParamModel> get parameters;
  bool get isEmptyArgs;
  bool get isList;
  bool get shouldUseAsList;

  /// Create a copy of MethodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MethodModelCopyWith<MethodModel> get copyWith =>
      _$MethodModelCopyWithImpl<MethodModel>(this as MethodModel, _$identity);

  /// Serializes this MethodModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MethodModel &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            const DeepCollectionEquality().equals(other.arguments, arguments) &&
            const DeepCollectionEquality()
                .equals(other.parameters, parameters) &&
            (identical(other.isEmptyArgs, isEmptyArgs) ||
                other.isEmptyArgs == isEmptyArgs) &&
            (identical(other.isList, isList) || other.isList == isList) &&
            (identical(other.shouldUseAsList, shouldUseAsList) ||
                other.shouldUseAsList == shouldUseAsList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      returnType,
      name,
      operation,
      const DeepCollectionEquality().hash(arguments),
      const DeepCollectionEquality().hash(parameters),
      isEmptyArgs,
      isList,
      shouldUseAsList);

  @override
  String toString() {
    return 'MethodModel(returnType: $returnType, name: $name, operation: $operation, arguments: $arguments, parameters: $parameters, isEmptyArgs: $isEmptyArgs, isList: $isList, shouldUseAsList: $shouldUseAsList)';
  }
}

/// @nodoc
abstract mixin class $MethodModelCopyWith<$Res> {
  factory $MethodModelCopyWith(
          MethodModel value, $Res Function(MethodModel) _then) =
      _$MethodModelCopyWithImpl;
  @useResult
  $Res call(
      {String returnType,
      String name,
      String operation,
      List<ArgModel> arguments,
      List<ParamModel> parameters,
      bool isEmptyArgs,
      bool isList,
      bool shouldUseAsList});
}

/// @nodoc
class _$MethodModelCopyWithImpl<$Res> implements $MethodModelCopyWith<$Res> {
  _$MethodModelCopyWithImpl(this._self, this._then);

  final MethodModel _self;
  final $Res Function(MethodModel) _then;

  /// Create a copy of MethodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnType = null,
    Object? name = null,
    Object? operation = null,
    Object? arguments = null,
    Object? parameters = null,
    Object? isEmptyArgs = null,
    Object? isList = null,
    Object? shouldUseAsList = null,
  }) {
    return _then(_self.copyWith(
      returnType: null == returnType
          ? _self.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      operation: null == operation
          ? _self.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _self.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as List<ArgModel>,
      parameters: null == parameters
          ? _self.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<ParamModel>,
      isEmptyArgs: null == isEmptyArgs
          ? _self.isEmptyArgs
          : isEmptyArgs // ignore: cast_nullable_to_non_nullable
              as bool,
      isList: null == isList
          ? _self.isList
          : isList // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldUseAsList: null == shouldUseAsList
          ? _self.shouldUseAsList
          : shouldUseAsList // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _MethodModel implements MethodModel {
  const _MethodModel(
      {required this.returnType,
      required this.name,
      required this.operation,
      required final List<ArgModel> arguments,
      required final List<ParamModel> parameters,
      this.isEmptyArgs = false,
      this.isList = false,
      this.shouldUseAsList = false})
      : _arguments = arguments,
        _parameters = parameters;
  factory _MethodModel.fromJson(Map<String, dynamic> json) =>
      _$MethodModelFromJson(json);

  @override
  final String returnType;
  @override
  final String name;
  @override
  final String operation;
  final List<ArgModel> _arguments;
  @override
  List<ArgModel> get arguments {
    if (_arguments is EqualUnmodifiableListView) return _arguments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_arguments);
  }

  final List<ParamModel> _parameters;
  @override
  List<ParamModel> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  @override
  @JsonKey()
  final bool isEmptyArgs;
  @override
  @JsonKey()
  final bool isList;
  @override
  @JsonKey()
  final bool shouldUseAsList;

  /// Create a copy of MethodModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MethodModelCopyWith<_MethodModel> get copyWith =>
      __$MethodModelCopyWithImpl<_MethodModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MethodModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MethodModel &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.isEmptyArgs, isEmptyArgs) ||
                other.isEmptyArgs == isEmptyArgs) &&
            (identical(other.isList, isList) || other.isList == isList) &&
            (identical(other.shouldUseAsList, shouldUseAsList) ||
                other.shouldUseAsList == shouldUseAsList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      returnType,
      name,
      operation,
      const DeepCollectionEquality().hash(_arguments),
      const DeepCollectionEquality().hash(_parameters),
      isEmptyArgs,
      isList,
      shouldUseAsList);

  @override
  String toString() {
    return 'MethodModel(returnType: $returnType, name: $name, operation: $operation, arguments: $arguments, parameters: $parameters, isEmptyArgs: $isEmptyArgs, isList: $isList, shouldUseAsList: $shouldUseAsList)';
  }
}

/// @nodoc
abstract mixin class _$MethodModelCopyWith<$Res>
    implements $MethodModelCopyWith<$Res> {
  factory _$MethodModelCopyWith(
          _MethodModel value, $Res Function(_MethodModel) _then) =
      __$MethodModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String returnType,
      String name,
      String operation,
      List<ArgModel> arguments,
      List<ParamModel> parameters,
      bool isEmptyArgs,
      bool isList,
      bool shouldUseAsList});
}

/// @nodoc
class __$MethodModelCopyWithImpl<$Res> implements _$MethodModelCopyWith<$Res> {
  __$MethodModelCopyWithImpl(this._self, this._then);

  final _MethodModel _self;
  final $Res Function(_MethodModel) _then;

  /// Create a copy of MethodModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? returnType = null,
    Object? name = null,
    Object? operation = null,
    Object? arguments = null,
    Object? parameters = null,
    Object? isEmptyArgs = null,
    Object? isList = null,
    Object? shouldUseAsList = null,
  }) {
    return _then(_MethodModel(
      returnType: null == returnType
          ? _self.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      operation: null == operation
          ? _self.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _self._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as List<ArgModel>,
      parameters: null == parameters
          ? _self._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<ParamModel>,
      isEmptyArgs: null == isEmptyArgs
          ? _self.isEmptyArgs
          : isEmptyArgs // ignore: cast_nullable_to_non_nullable
              as bool,
      isList: null == isList
          ? _self.isList
          : isList // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldUseAsList: null == shouldUseAsList
          ? _self.shouldUseAsList
          : shouldUseAsList // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$LoaderMethodModel {
  String get returnType;
  String get nullabilitySuffix;
  String get name;
  bool get hasFilter;
  bool get isListLoader;
  bool get isPaginated;
  bool get hasRequiredParam;
  List<TypeModel> get types;
  List<ParamModel> get filterParams;
  int get defaultOffset;
  int get defaultPageSize;
  List<BuiltListJsonConverterModel> get builtListConverters;
  bool get isInline;
  bool get shouldUseAsList;

  /// Create a copy of LoaderMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoaderMethodModelCopyWith<LoaderMethodModel> get copyWith =>
      _$LoaderMethodModelCopyWithImpl<LoaderMethodModel>(
          this as LoaderMethodModel, _$identity);

  /// Serializes this LoaderMethodModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoaderMethodModel &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.nullabilitySuffix, nullabilitySuffix) ||
                other.nullabilitySuffix == nullabilitySuffix) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.hasFilter, hasFilter) ||
                other.hasFilter == hasFilter) &&
            (identical(other.isListLoader, isListLoader) ||
                other.isListLoader == isListLoader) &&
            (identical(other.isPaginated, isPaginated) ||
                other.isPaginated == isPaginated) &&
            (identical(other.hasRequiredParam, hasRequiredParam) ||
                other.hasRequiredParam == hasRequiredParam) &&
            const DeepCollectionEquality().equals(other.types, types) &&
            const DeepCollectionEquality()
                .equals(other.filterParams, filterParams) &&
            (identical(other.defaultOffset, defaultOffset) ||
                other.defaultOffset == defaultOffset) &&
            (identical(other.defaultPageSize, defaultPageSize) ||
                other.defaultPageSize == defaultPageSize) &&
            const DeepCollectionEquality()
                .equals(other.builtListConverters, builtListConverters) &&
            (identical(other.isInline, isInline) ||
                other.isInline == isInline) &&
            (identical(other.shouldUseAsList, shouldUseAsList) ||
                other.shouldUseAsList == shouldUseAsList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      returnType,
      nullabilitySuffix,
      name,
      hasFilter,
      isListLoader,
      isPaginated,
      hasRequiredParam,
      const DeepCollectionEquality().hash(types),
      const DeepCollectionEquality().hash(filterParams),
      defaultOffset,
      defaultPageSize,
      const DeepCollectionEquality().hash(builtListConverters),
      isInline,
      shouldUseAsList);

  @override
  String toString() {
    return 'LoaderMethodModel(returnType: $returnType, nullabilitySuffix: $nullabilitySuffix, name: $name, hasFilter: $hasFilter, isListLoader: $isListLoader, isPaginated: $isPaginated, hasRequiredParam: $hasRequiredParam, types: $types, filterParams: $filterParams, defaultOffset: $defaultOffset, defaultPageSize: $defaultPageSize, builtListConverters: $builtListConverters, isInline: $isInline, shouldUseAsList: $shouldUseAsList)';
  }
}

/// @nodoc
abstract mixin class $LoaderMethodModelCopyWith<$Res> {
  factory $LoaderMethodModelCopyWith(
          LoaderMethodModel value, $Res Function(LoaderMethodModel) _then) =
      _$LoaderMethodModelCopyWithImpl;
  @useResult
  $Res call(
      {String returnType,
      String nullabilitySuffix,
      String name,
      bool hasFilter,
      bool isListLoader,
      bool isPaginated,
      bool hasRequiredParam,
      List<TypeModel> types,
      List<ParamModel> filterParams,
      int defaultOffset,
      int defaultPageSize,
      List<BuiltListJsonConverterModel> builtListConverters,
      bool isInline,
      bool shouldUseAsList});
}

/// @nodoc
class _$LoaderMethodModelCopyWithImpl<$Res>
    implements $LoaderMethodModelCopyWith<$Res> {
  _$LoaderMethodModelCopyWithImpl(this._self, this._then);

  final LoaderMethodModel _self;
  final $Res Function(LoaderMethodModel) _then;

  /// Create a copy of LoaderMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnType = null,
    Object? nullabilitySuffix = null,
    Object? name = null,
    Object? hasFilter = null,
    Object? isListLoader = null,
    Object? isPaginated = null,
    Object? hasRequiredParam = null,
    Object? types = null,
    Object? filterParams = null,
    Object? defaultOffset = null,
    Object? defaultPageSize = null,
    Object? builtListConverters = null,
    Object? isInline = null,
    Object? shouldUseAsList = null,
  }) {
    return _then(_self.copyWith(
      returnType: null == returnType
          ? _self.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String,
      nullabilitySuffix: null == nullabilitySuffix
          ? _self.nullabilitySuffix
          : nullabilitySuffix // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasFilter: null == hasFilter
          ? _self.hasFilter
          : hasFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      isListLoader: null == isListLoader
          ? _self.isListLoader
          : isListLoader // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginated: null == isPaginated
          ? _self.isPaginated
          : isPaginated // ignore: cast_nullable_to_non_nullable
              as bool,
      hasRequiredParam: null == hasRequiredParam
          ? _self.hasRequiredParam
          : hasRequiredParam // ignore: cast_nullable_to_non_nullable
              as bool,
      types: null == types
          ? _self.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeModel>,
      filterParams: null == filterParams
          ? _self.filterParams
          : filterParams // ignore: cast_nullable_to_non_nullable
              as List<ParamModel>,
      defaultOffset: null == defaultOffset
          ? _self.defaultOffset
          : defaultOffset // ignore: cast_nullable_to_non_nullable
              as int,
      defaultPageSize: null == defaultPageSize
          ? _self.defaultPageSize
          : defaultPageSize // ignore: cast_nullable_to_non_nullable
              as int,
      builtListConverters: null == builtListConverters
          ? _self.builtListConverters
          : builtListConverters // ignore: cast_nullable_to_non_nullable
              as List<BuiltListJsonConverterModel>,
      isInline: null == isInline
          ? _self.isInline
          : isInline // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldUseAsList: null == shouldUseAsList
          ? _self.shouldUseAsList
          : shouldUseAsList // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _LoaderMethodModel implements LoaderMethodModel {
  const _LoaderMethodModel(
      {required this.returnType,
      required this.nullabilitySuffix,
      required this.name,
      required this.hasFilter,
      required this.isListLoader,
      required this.isPaginated,
      required this.hasRequiredParam,
      required final List<TypeModel> types,
      required final List<ParamModel> filterParams,
      required this.defaultOffset,
      required this.defaultPageSize,
      final List<BuiltListJsonConverterModel> builtListConverters =
          const <BuiltListJsonConverterModel>[],
      this.isInline = false,
      this.shouldUseAsList = false})
      : _types = types,
        _filterParams = filterParams,
        _builtListConverters = builtListConverters;
  factory _LoaderMethodModel.fromJson(Map<String, dynamic> json) =>
      _$LoaderMethodModelFromJson(json);

  @override
  final String returnType;
  @override
  final String nullabilitySuffix;
  @override
  final String name;
  @override
  final bool hasFilter;
  @override
  final bool isListLoader;
  @override
  final bool isPaginated;
  @override
  final bool hasRequiredParam;
  final List<TypeModel> _types;
  @override
  List<TypeModel> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<ParamModel> _filterParams;
  @override
  List<ParamModel> get filterParams {
    if (_filterParams is EqualUnmodifiableListView) return _filterParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filterParams);
  }

  @override
  final int defaultOffset;
  @override
  final int defaultPageSize;
  final List<BuiltListJsonConverterModel> _builtListConverters;
  @override
  @JsonKey()
  List<BuiltListJsonConverterModel> get builtListConverters {
    if (_builtListConverters is EqualUnmodifiableListView)
      return _builtListConverters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_builtListConverters);
  }

  @override
  @JsonKey()
  final bool isInline;
  @override
  @JsonKey()
  final bool shouldUseAsList;

  /// Create a copy of LoaderMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoaderMethodModelCopyWith<_LoaderMethodModel> get copyWith =>
      __$LoaderMethodModelCopyWithImpl<_LoaderMethodModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoaderMethodModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoaderMethodModel &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.nullabilitySuffix, nullabilitySuffix) ||
                other.nullabilitySuffix == nullabilitySuffix) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.hasFilter, hasFilter) ||
                other.hasFilter == hasFilter) &&
            (identical(other.isListLoader, isListLoader) ||
                other.isListLoader == isListLoader) &&
            (identical(other.isPaginated, isPaginated) ||
                other.isPaginated == isPaginated) &&
            (identical(other.hasRequiredParam, hasRequiredParam) ||
                other.hasRequiredParam == hasRequiredParam) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality()
                .equals(other._filterParams, _filterParams) &&
            (identical(other.defaultOffset, defaultOffset) ||
                other.defaultOffset == defaultOffset) &&
            (identical(other.defaultPageSize, defaultPageSize) ||
                other.defaultPageSize == defaultPageSize) &&
            const DeepCollectionEquality()
                .equals(other._builtListConverters, _builtListConverters) &&
            (identical(other.isInline, isInline) ||
                other.isInline == isInline) &&
            (identical(other.shouldUseAsList, shouldUseAsList) ||
                other.shouldUseAsList == shouldUseAsList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      returnType,
      nullabilitySuffix,
      name,
      hasFilter,
      isListLoader,
      isPaginated,
      hasRequiredParam,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_filterParams),
      defaultOffset,
      defaultPageSize,
      const DeepCollectionEquality().hash(_builtListConverters),
      isInline,
      shouldUseAsList);

  @override
  String toString() {
    return 'LoaderMethodModel(returnType: $returnType, nullabilitySuffix: $nullabilitySuffix, name: $name, hasFilter: $hasFilter, isListLoader: $isListLoader, isPaginated: $isPaginated, hasRequiredParam: $hasRequiredParam, types: $types, filterParams: $filterParams, defaultOffset: $defaultOffset, defaultPageSize: $defaultPageSize, builtListConverters: $builtListConverters, isInline: $isInline, shouldUseAsList: $shouldUseAsList)';
  }
}

/// @nodoc
abstract mixin class _$LoaderMethodModelCopyWith<$Res>
    implements $LoaderMethodModelCopyWith<$Res> {
  factory _$LoaderMethodModelCopyWith(
          _LoaderMethodModel value, $Res Function(_LoaderMethodModel) _then) =
      __$LoaderMethodModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String returnType,
      String nullabilitySuffix,
      String name,
      bool hasFilter,
      bool isListLoader,
      bool isPaginated,
      bool hasRequiredParam,
      List<TypeModel> types,
      List<ParamModel> filterParams,
      int defaultOffset,
      int defaultPageSize,
      List<BuiltListJsonConverterModel> builtListConverters,
      bool isInline,
      bool shouldUseAsList});
}

/// @nodoc
class __$LoaderMethodModelCopyWithImpl<$Res>
    implements _$LoaderMethodModelCopyWith<$Res> {
  __$LoaderMethodModelCopyWithImpl(this._self, this._then);

  final _LoaderMethodModel _self;
  final $Res Function(_LoaderMethodModel) _then;

  /// Create a copy of LoaderMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? returnType = null,
    Object? nullabilitySuffix = null,
    Object? name = null,
    Object? hasFilter = null,
    Object? isListLoader = null,
    Object? isPaginated = null,
    Object? hasRequiredParam = null,
    Object? types = null,
    Object? filterParams = null,
    Object? defaultOffset = null,
    Object? defaultPageSize = null,
    Object? builtListConverters = null,
    Object? isInline = null,
    Object? shouldUseAsList = null,
  }) {
    return _then(_LoaderMethodModel(
      returnType: null == returnType
          ? _self.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String,
      nullabilitySuffix: null == nullabilitySuffix
          ? _self.nullabilitySuffix
          : nullabilitySuffix // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hasFilter: null == hasFilter
          ? _self.hasFilter
          : hasFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      isListLoader: null == isListLoader
          ? _self.isListLoader
          : isListLoader // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginated: null == isPaginated
          ? _self.isPaginated
          : isPaginated // ignore: cast_nullable_to_non_nullable
              as bool,
      hasRequiredParam: null == hasRequiredParam
          ? _self.hasRequiredParam
          : hasRequiredParam // ignore: cast_nullable_to_non_nullable
              as bool,
      types: null == types
          ? _self._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypeModel>,
      filterParams: null == filterParams
          ? _self._filterParams
          : filterParams // ignore: cast_nullable_to_non_nullable
              as List<ParamModel>,
      defaultOffset: null == defaultOffset
          ? _self.defaultOffset
          : defaultOffset // ignore: cast_nullable_to_non_nullable
              as int,
      defaultPageSize: null == defaultPageSize
          ? _self.defaultPageSize
          : defaultPageSize // ignore: cast_nullable_to_non_nullable
              as int,
      builtListConverters: null == builtListConverters
          ? _self._builtListConverters
          : builtListConverters // ignore: cast_nullable_to_non_nullable
              as List<BuiltListJsonConverterModel>,
      isInline: null == isInline
          ? _self.isInline
          : isInline // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldUseAsList: null == shouldUseAsList
          ? _self.shouldUseAsList
          : shouldUseAsList // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$LoaderRepositoryTemplateModel {
  LoaderTemplateModel? get dataLoader;
  LoaderTemplateModel? get listLoader;
  bool get hasDataLoader;
  bool get hasListLoader;
  List<MethodModel> get crudMethods;
  String get repositoryName;
  String get api;
  String get dataLoaderMethodName;
  String get listLoaderMethodName;
  String get dataFilterSuffix;
  String get listFilterSuffix;

  /// Create a copy of LoaderRepositoryTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoaderRepositoryTemplateModelCopyWith<LoaderRepositoryTemplateModel>
      get copyWith => _$LoaderRepositoryTemplateModelCopyWithImpl<
              LoaderRepositoryTemplateModel>(
          this as LoaderRepositoryTemplateModel, _$identity);

  /// Serializes this LoaderRepositoryTemplateModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoaderRepositoryTemplateModel &&
            (identical(other.dataLoader, dataLoader) ||
                other.dataLoader == dataLoader) &&
            (identical(other.listLoader, listLoader) ||
                other.listLoader == listLoader) &&
            (identical(other.hasDataLoader, hasDataLoader) ||
                other.hasDataLoader == hasDataLoader) &&
            (identical(other.hasListLoader, hasListLoader) ||
                other.hasListLoader == hasListLoader) &&
            const DeepCollectionEquality()
                .equals(other.crudMethods, crudMethods) &&
            (identical(other.repositoryName, repositoryName) ||
                other.repositoryName == repositoryName) &&
            (identical(other.api, api) || other.api == api) &&
            (identical(other.dataLoaderMethodName, dataLoaderMethodName) ||
                other.dataLoaderMethodName == dataLoaderMethodName) &&
            (identical(other.listLoaderMethodName, listLoaderMethodName) ||
                other.listLoaderMethodName == listLoaderMethodName) &&
            (identical(other.dataFilterSuffix, dataFilterSuffix) ||
                other.dataFilterSuffix == dataFilterSuffix) &&
            (identical(other.listFilterSuffix, listFilterSuffix) ||
                other.listFilterSuffix == listFilterSuffix));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dataLoader,
      listLoader,
      hasDataLoader,
      hasListLoader,
      const DeepCollectionEquality().hash(crudMethods),
      repositoryName,
      api,
      dataLoaderMethodName,
      listLoaderMethodName,
      dataFilterSuffix,
      listFilterSuffix);

  @override
  String toString() {
    return 'LoaderRepositoryTemplateModel(dataLoader: $dataLoader, listLoader: $listLoader, hasDataLoader: $hasDataLoader, hasListLoader: $hasListLoader, crudMethods: $crudMethods, repositoryName: $repositoryName, api: $api, dataLoaderMethodName: $dataLoaderMethodName, listLoaderMethodName: $listLoaderMethodName, dataFilterSuffix: $dataFilterSuffix, listFilterSuffix: $listFilterSuffix)';
  }
}

/// @nodoc
abstract mixin class $LoaderRepositoryTemplateModelCopyWith<$Res> {
  factory $LoaderRepositoryTemplateModelCopyWith(
          LoaderRepositoryTemplateModel value,
          $Res Function(LoaderRepositoryTemplateModel) _then) =
      _$LoaderRepositoryTemplateModelCopyWithImpl;
  @useResult
  $Res call(
      {LoaderTemplateModel? dataLoader,
      LoaderTemplateModel? listLoader,
      bool hasDataLoader,
      bool hasListLoader,
      List<MethodModel> crudMethods,
      String repositoryName,
      String api,
      String dataLoaderMethodName,
      String listLoaderMethodName,
      String dataFilterSuffix,
      String listFilterSuffix});

  $LoaderTemplateModelCopyWith<$Res>? get dataLoader;
  $LoaderTemplateModelCopyWith<$Res>? get listLoader;
}

/// @nodoc
class _$LoaderRepositoryTemplateModelCopyWithImpl<$Res>
    implements $LoaderRepositoryTemplateModelCopyWith<$Res> {
  _$LoaderRepositoryTemplateModelCopyWithImpl(this._self, this._then);

  final LoaderRepositoryTemplateModel _self;
  final $Res Function(LoaderRepositoryTemplateModel) _then;

  /// Create a copy of LoaderRepositoryTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataLoader = freezed,
    Object? listLoader = freezed,
    Object? hasDataLoader = null,
    Object? hasListLoader = null,
    Object? crudMethods = null,
    Object? repositoryName = null,
    Object? api = null,
    Object? dataLoaderMethodName = null,
    Object? listLoaderMethodName = null,
    Object? dataFilterSuffix = null,
    Object? listFilterSuffix = null,
  }) {
    return _then(_self.copyWith(
      dataLoader: freezed == dataLoader
          ? _self.dataLoader
          : dataLoader // ignore: cast_nullable_to_non_nullable
              as LoaderTemplateModel?,
      listLoader: freezed == listLoader
          ? _self.listLoader
          : listLoader // ignore: cast_nullable_to_non_nullable
              as LoaderTemplateModel?,
      hasDataLoader: null == hasDataLoader
          ? _self.hasDataLoader
          : hasDataLoader // ignore: cast_nullable_to_non_nullable
              as bool,
      hasListLoader: null == hasListLoader
          ? _self.hasListLoader
          : hasListLoader // ignore: cast_nullable_to_non_nullable
              as bool,
      crudMethods: null == crudMethods
          ? _self.crudMethods
          : crudMethods // ignore: cast_nullable_to_non_nullable
              as List<MethodModel>,
      repositoryName: null == repositoryName
          ? _self.repositoryName
          : repositoryName // ignore: cast_nullable_to_non_nullable
              as String,
      api: null == api
          ? _self.api
          : api // ignore: cast_nullable_to_non_nullable
              as String,
      dataLoaderMethodName: null == dataLoaderMethodName
          ? _self.dataLoaderMethodName
          : dataLoaderMethodName // ignore: cast_nullable_to_non_nullable
              as String,
      listLoaderMethodName: null == listLoaderMethodName
          ? _self.listLoaderMethodName
          : listLoaderMethodName // ignore: cast_nullable_to_non_nullable
              as String,
      dataFilterSuffix: null == dataFilterSuffix
          ? _self.dataFilterSuffix
          : dataFilterSuffix // ignore: cast_nullable_to_non_nullable
              as String,
      listFilterSuffix: null == listFilterSuffix
          ? _self.listFilterSuffix
          : listFilterSuffix // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of LoaderRepositoryTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoaderTemplateModelCopyWith<$Res>? get dataLoader {
    if (_self.dataLoader == null) {
      return null;
    }

    return $LoaderTemplateModelCopyWith<$Res>(_self.dataLoader!, (value) {
      return _then(_self.copyWith(dataLoader: value));
    });
  }

  /// Create a copy of LoaderRepositoryTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoaderTemplateModelCopyWith<$Res>? get listLoader {
    if (_self.listLoader == null) {
      return null;
    }

    return $LoaderTemplateModelCopyWith<$Res>(_self.listLoader!, (value) {
      return _then(_self.copyWith(listLoader: value));
    });
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _LoaderRepositoryTemplateModel implements LoaderRepositoryTemplateModel {
  const _LoaderRepositoryTemplateModel(
      {this.dataLoader,
      this.listLoader,
      required this.hasDataLoader,
      required this.hasListLoader,
      required final List<MethodModel> crudMethods,
      required this.repositoryName,
      required this.api,
      required this.dataLoaderMethodName,
      required this.listLoaderMethodName,
      required this.dataFilterSuffix,
      required this.listFilterSuffix})
      : _crudMethods = crudMethods;
  factory _LoaderRepositoryTemplateModel.fromJson(Map<String, dynamic> json) =>
      _$LoaderRepositoryTemplateModelFromJson(json);

  @override
  final LoaderTemplateModel? dataLoader;
  @override
  final LoaderTemplateModel? listLoader;
  @override
  final bool hasDataLoader;
  @override
  final bool hasListLoader;
  final List<MethodModel> _crudMethods;
  @override
  List<MethodModel> get crudMethods {
    if (_crudMethods is EqualUnmodifiableListView) return _crudMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crudMethods);
  }

  @override
  final String repositoryName;
  @override
  final String api;
  @override
  final String dataLoaderMethodName;
  @override
  final String listLoaderMethodName;
  @override
  final String dataFilterSuffix;
  @override
  final String listFilterSuffix;

  /// Create a copy of LoaderRepositoryTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoaderRepositoryTemplateModelCopyWith<_LoaderRepositoryTemplateModel>
      get copyWith => __$LoaderRepositoryTemplateModelCopyWithImpl<
          _LoaderRepositoryTemplateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoaderRepositoryTemplateModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoaderRepositoryTemplateModel &&
            (identical(other.dataLoader, dataLoader) ||
                other.dataLoader == dataLoader) &&
            (identical(other.listLoader, listLoader) ||
                other.listLoader == listLoader) &&
            (identical(other.hasDataLoader, hasDataLoader) ||
                other.hasDataLoader == hasDataLoader) &&
            (identical(other.hasListLoader, hasListLoader) ||
                other.hasListLoader == hasListLoader) &&
            const DeepCollectionEquality()
                .equals(other._crudMethods, _crudMethods) &&
            (identical(other.repositoryName, repositoryName) ||
                other.repositoryName == repositoryName) &&
            (identical(other.api, api) || other.api == api) &&
            (identical(other.dataLoaderMethodName, dataLoaderMethodName) ||
                other.dataLoaderMethodName == dataLoaderMethodName) &&
            (identical(other.listLoaderMethodName, listLoaderMethodName) ||
                other.listLoaderMethodName == listLoaderMethodName) &&
            (identical(other.dataFilterSuffix, dataFilterSuffix) ||
                other.dataFilterSuffix == dataFilterSuffix) &&
            (identical(other.listFilterSuffix, listFilterSuffix) ||
                other.listFilterSuffix == listFilterSuffix));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dataLoader,
      listLoader,
      hasDataLoader,
      hasListLoader,
      const DeepCollectionEquality().hash(_crudMethods),
      repositoryName,
      api,
      dataLoaderMethodName,
      listLoaderMethodName,
      dataFilterSuffix,
      listFilterSuffix);

  @override
  String toString() {
    return 'LoaderRepositoryTemplateModel(dataLoader: $dataLoader, listLoader: $listLoader, hasDataLoader: $hasDataLoader, hasListLoader: $hasListLoader, crudMethods: $crudMethods, repositoryName: $repositoryName, api: $api, dataLoaderMethodName: $dataLoaderMethodName, listLoaderMethodName: $listLoaderMethodName, dataFilterSuffix: $dataFilterSuffix, listFilterSuffix: $listFilterSuffix)';
  }
}

/// @nodoc
abstract mixin class _$LoaderRepositoryTemplateModelCopyWith<$Res>
    implements $LoaderRepositoryTemplateModelCopyWith<$Res> {
  factory _$LoaderRepositoryTemplateModelCopyWith(
          _LoaderRepositoryTemplateModel value,
          $Res Function(_LoaderRepositoryTemplateModel) _then) =
      __$LoaderRepositoryTemplateModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {LoaderTemplateModel? dataLoader,
      LoaderTemplateModel? listLoader,
      bool hasDataLoader,
      bool hasListLoader,
      List<MethodModel> crudMethods,
      String repositoryName,
      String api,
      String dataLoaderMethodName,
      String listLoaderMethodName,
      String dataFilterSuffix,
      String listFilterSuffix});

  @override
  $LoaderTemplateModelCopyWith<$Res>? get dataLoader;
  @override
  $LoaderTemplateModelCopyWith<$Res>? get listLoader;
}

/// @nodoc
class __$LoaderRepositoryTemplateModelCopyWithImpl<$Res>
    implements _$LoaderRepositoryTemplateModelCopyWith<$Res> {
  __$LoaderRepositoryTemplateModelCopyWithImpl(this._self, this._then);

  final _LoaderRepositoryTemplateModel _self;
  final $Res Function(_LoaderRepositoryTemplateModel) _then;

  /// Create a copy of LoaderRepositoryTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dataLoader = freezed,
    Object? listLoader = freezed,
    Object? hasDataLoader = null,
    Object? hasListLoader = null,
    Object? crudMethods = null,
    Object? repositoryName = null,
    Object? api = null,
    Object? dataLoaderMethodName = null,
    Object? listLoaderMethodName = null,
    Object? dataFilterSuffix = null,
    Object? listFilterSuffix = null,
  }) {
    return _then(_LoaderRepositoryTemplateModel(
      dataLoader: freezed == dataLoader
          ? _self.dataLoader
          : dataLoader // ignore: cast_nullable_to_non_nullable
              as LoaderTemplateModel?,
      listLoader: freezed == listLoader
          ? _self.listLoader
          : listLoader // ignore: cast_nullable_to_non_nullable
              as LoaderTemplateModel?,
      hasDataLoader: null == hasDataLoader
          ? _self.hasDataLoader
          : hasDataLoader // ignore: cast_nullable_to_non_nullable
              as bool,
      hasListLoader: null == hasListLoader
          ? _self.hasListLoader
          : hasListLoader // ignore: cast_nullable_to_non_nullable
              as bool,
      crudMethods: null == crudMethods
          ? _self._crudMethods
          : crudMethods // ignore: cast_nullable_to_non_nullable
              as List<MethodModel>,
      repositoryName: null == repositoryName
          ? _self.repositoryName
          : repositoryName // ignore: cast_nullable_to_non_nullable
              as String,
      api: null == api
          ? _self.api
          : api // ignore: cast_nullable_to_non_nullable
              as String,
      dataLoaderMethodName: null == dataLoaderMethodName
          ? _self.dataLoaderMethodName
          : dataLoaderMethodName // ignore: cast_nullable_to_non_nullable
              as String,
      listLoaderMethodName: null == listLoaderMethodName
          ? _self.listLoaderMethodName
          : listLoaderMethodName // ignore: cast_nullable_to_non_nullable
              as String,
      dataFilterSuffix: null == dataFilterSuffix
          ? _self.dataFilterSuffix
          : dataFilterSuffix // ignore: cast_nullable_to_non_nullable
              as String,
      listFilterSuffix: null == listFilterSuffix
          ? _self.listFilterSuffix
          : listFilterSuffix // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of LoaderRepositoryTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoaderTemplateModelCopyWith<$Res>? get dataLoader {
    if (_self.dataLoader == null) {
      return null;
    }

    return $LoaderTemplateModelCopyWith<$Res>(_self.dataLoader!, (value) {
      return _then(_self.copyWith(dataLoader: value));
    });
  }

  /// Create a copy of LoaderRepositoryTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoaderTemplateModelCopyWith<$Res>? get listLoader {
    if (_self.listLoader == null) {
      return null;
    }

    return $LoaderTemplateModelCopyWith<$Res>(_self.listLoader!, (value) {
      return _then(_self.copyWith(listLoader: value));
    });
  }
}

/// @nodoc
mixin _$LoaderTemplateModel {
  String get api;
  dynamic get hasRequiredParam;
  bool get isInline;
  bool get shouldUseAsList;
  String get methodName;
  String get returnType;
  String get returnTypeNullabilitySuffix;
  bool get hasFilter;
  List<ParamModel> get additionalParams;
  List<ParamModel> get filterParams;

  /// Create a copy of LoaderTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoaderTemplateModelCopyWith<LoaderTemplateModel> get copyWith =>
      _$LoaderTemplateModelCopyWithImpl<LoaderTemplateModel>(
          this as LoaderTemplateModel, _$identity);

  /// Serializes this LoaderTemplateModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoaderTemplateModel &&
            (identical(other.api, api) || other.api == api) &&
            const DeepCollectionEquality()
                .equals(other.hasRequiredParam, hasRequiredParam) &&
            (identical(other.isInline, isInline) ||
                other.isInline == isInline) &&
            (identical(other.shouldUseAsList, shouldUseAsList) ||
                other.shouldUseAsList == shouldUseAsList) &&
            (identical(other.methodName, methodName) ||
                other.methodName == methodName) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.returnTypeNullabilitySuffix,
                    returnTypeNullabilitySuffix) ||
                other.returnTypeNullabilitySuffix ==
                    returnTypeNullabilitySuffix) &&
            (identical(other.hasFilter, hasFilter) ||
                other.hasFilter == hasFilter) &&
            const DeepCollectionEquality()
                .equals(other.additionalParams, additionalParams) &&
            const DeepCollectionEquality()
                .equals(other.filterParams, filterParams));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      api,
      const DeepCollectionEquality().hash(hasRequiredParam),
      isInline,
      shouldUseAsList,
      methodName,
      returnType,
      returnTypeNullabilitySuffix,
      hasFilter,
      const DeepCollectionEquality().hash(additionalParams),
      const DeepCollectionEquality().hash(filterParams));

  @override
  String toString() {
    return 'LoaderTemplateModel(api: $api, hasRequiredParam: $hasRequiredParam, isInline: $isInline, shouldUseAsList: $shouldUseAsList, methodName: $methodName, returnType: $returnType, returnTypeNullabilitySuffix: $returnTypeNullabilitySuffix, hasFilter: $hasFilter, additionalParams: $additionalParams, filterParams: $filterParams)';
  }
}

/// @nodoc
abstract mixin class $LoaderTemplateModelCopyWith<$Res> {
  factory $LoaderTemplateModelCopyWith(
          LoaderTemplateModel value, $Res Function(LoaderTemplateModel) _then) =
      _$LoaderTemplateModelCopyWithImpl;
  @useResult
  $Res call(
      {String api,
      dynamic hasRequiredParam,
      bool isInline,
      bool shouldUseAsList,
      String methodName,
      String returnType,
      String returnTypeNullabilitySuffix,
      bool hasFilter,
      List<ParamModel> additionalParams,
      List<ParamModel> filterParams});
}

/// @nodoc
class _$LoaderTemplateModelCopyWithImpl<$Res>
    implements $LoaderTemplateModelCopyWith<$Res> {
  _$LoaderTemplateModelCopyWithImpl(this._self, this._then);

  final LoaderTemplateModel _self;
  final $Res Function(LoaderTemplateModel) _then;

  /// Create a copy of LoaderTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? api = null,
    Object? hasRequiredParam = freezed,
    Object? isInline = null,
    Object? shouldUseAsList = null,
    Object? methodName = null,
    Object? returnType = null,
    Object? returnTypeNullabilitySuffix = null,
    Object? hasFilter = null,
    Object? additionalParams = null,
    Object? filterParams = null,
  }) {
    return _then(_self.copyWith(
      api: null == api
          ? _self.api
          : api // ignore: cast_nullable_to_non_nullable
              as String,
      hasRequiredParam: freezed == hasRequiredParam
          ? _self.hasRequiredParam
          : hasRequiredParam // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isInline: null == isInline
          ? _self.isInline
          : isInline // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldUseAsList: null == shouldUseAsList
          ? _self.shouldUseAsList
          : shouldUseAsList // ignore: cast_nullable_to_non_nullable
              as bool,
      methodName: null == methodName
          ? _self.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String,
      returnType: null == returnType
          ? _self.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String,
      returnTypeNullabilitySuffix: null == returnTypeNullabilitySuffix
          ? _self.returnTypeNullabilitySuffix
          : returnTypeNullabilitySuffix // ignore: cast_nullable_to_non_nullable
              as String,
      hasFilter: null == hasFilter
          ? _self.hasFilter
          : hasFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      additionalParams: null == additionalParams
          ? _self.additionalParams
          : additionalParams // ignore: cast_nullable_to_non_nullable
              as List<ParamModel>,
      filterParams: null == filterParams
          ? _self.filterParams
          : filterParams // ignore: cast_nullable_to_non_nullable
              as List<ParamModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _LoaderTemplateModel implements LoaderTemplateModel {
  const _LoaderTemplateModel(
      {required this.api,
      this.hasRequiredParam = false,
      this.isInline = false,
      this.shouldUseAsList = false,
      required this.methodName,
      required this.returnType,
      required this.returnTypeNullabilitySuffix,
      this.hasFilter = false,
      final List<ParamModel> additionalParams = const [],
      final List<ParamModel> filterParams = const []})
      : _additionalParams = additionalParams,
        _filterParams = filterParams;
  factory _LoaderTemplateModel.fromJson(Map<String, dynamic> json) =>
      _$LoaderTemplateModelFromJson(json);

  @override
  final String api;
  @override
  @JsonKey()
  final dynamic hasRequiredParam;
  @override
  @JsonKey()
  final bool isInline;
  @override
  @JsonKey()
  final bool shouldUseAsList;
  @override
  final String methodName;
  @override
  final String returnType;
  @override
  final String returnTypeNullabilitySuffix;
  @override
  @JsonKey()
  final bool hasFilter;
  final List<ParamModel> _additionalParams;
  @override
  @JsonKey()
  List<ParamModel> get additionalParams {
    if (_additionalParams is EqualUnmodifiableListView)
      return _additionalParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_additionalParams);
  }

  final List<ParamModel> _filterParams;
  @override
  @JsonKey()
  List<ParamModel> get filterParams {
    if (_filterParams is EqualUnmodifiableListView) return _filterParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filterParams);
  }

  /// Create a copy of LoaderTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoaderTemplateModelCopyWith<_LoaderTemplateModel> get copyWith =>
      __$LoaderTemplateModelCopyWithImpl<_LoaderTemplateModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoaderTemplateModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoaderTemplateModel &&
            (identical(other.api, api) || other.api == api) &&
            const DeepCollectionEquality()
                .equals(other.hasRequiredParam, hasRequiredParam) &&
            (identical(other.isInline, isInline) ||
                other.isInline == isInline) &&
            (identical(other.shouldUseAsList, shouldUseAsList) ||
                other.shouldUseAsList == shouldUseAsList) &&
            (identical(other.methodName, methodName) ||
                other.methodName == methodName) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.returnTypeNullabilitySuffix,
                    returnTypeNullabilitySuffix) ||
                other.returnTypeNullabilitySuffix ==
                    returnTypeNullabilitySuffix) &&
            (identical(other.hasFilter, hasFilter) ||
                other.hasFilter == hasFilter) &&
            const DeepCollectionEquality()
                .equals(other._additionalParams, _additionalParams) &&
            const DeepCollectionEquality()
                .equals(other._filterParams, _filterParams));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      api,
      const DeepCollectionEquality().hash(hasRequiredParam),
      isInline,
      shouldUseAsList,
      methodName,
      returnType,
      returnTypeNullabilitySuffix,
      hasFilter,
      const DeepCollectionEquality().hash(_additionalParams),
      const DeepCollectionEquality().hash(_filterParams));

  @override
  String toString() {
    return 'LoaderTemplateModel(api: $api, hasRequiredParam: $hasRequiredParam, isInline: $isInline, shouldUseAsList: $shouldUseAsList, methodName: $methodName, returnType: $returnType, returnTypeNullabilitySuffix: $returnTypeNullabilitySuffix, hasFilter: $hasFilter, additionalParams: $additionalParams, filterParams: $filterParams)';
  }
}

/// @nodoc
abstract mixin class _$LoaderTemplateModelCopyWith<$Res>
    implements $LoaderTemplateModelCopyWith<$Res> {
  factory _$LoaderTemplateModelCopyWith(_LoaderTemplateModel value,
          $Res Function(_LoaderTemplateModel) _then) =
      __$LoaderTemplateModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String api,
      dynamic hasRequiredParam,
      bool isInline,
      bool shouldUseAsList,
      String methodName,
      String returnType,
      String returnTypeNullabilitySuffix,
      bool hasFilter,
      List<ParamModel> additionalParams,
      List<ParamModel> filterParams});
}

/// @nodoc
class __$LoaderTemplateModelCopyWithImpl<$Res>
    implements _$LoaderTemplateModelCopyWith<$Res> {
  __$LoaderTemplateModelCopyWithImpl(this._self, this._then);

  final _LoaderTemplateModel _self;
  final $Res Function(_LoaderTemplateModel) _then;

  /// Create a copy of LoaderTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? api = null,
    Object? hasRequiredParam = freezed,
    Object? isInline = null,
    Object? shouldUseAsList = null,
    Object? methodName = null,
    Object? returnType = null,
    Object? returnTypeNullabilitySuffix = null,
    Object? hasFilter = null,
    Object? additionalParams = null,
    Object? filterParams = null,
  }) {
    return _then(_LoaderTemplateModel(
      api: null == api
          ? _self.api
          : api // ignore: cast_nullable_to_non_nullable
              as String,
      hasRequiredParam: freezed == hasRequiredParam
          ? _self.hasRequiredParam
          : hasRequiredParam // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isInline: null == isInline
          ? _self.isInline
          : isInline // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldUseAsList: null == shouldUseAsList
          ? _self.shouldUseAsList
          : shouldUseAsList // ignore: cast_nullable_to_non_nullable
              as bool,
      methodName: null == methodName
          ? _self.methodName
          : methodName // ignore: cast_nullable_to_non_nullable
              as String,
      returnType: null == returnType
          ? _self.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String,
      returnTypeNullabilitySuffix: null == returnTypeNullabilitySuffix
          ? _self.returnTypeNullabilitySuffix
          : returnTypeNullabilitySuffix // ignore: cast_nullable_to_non_nullable
              as String,
      hasFilter: null == hasFilter
          ? _self.hasFilter
          : hasFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      additionalParams: null == additionalParams
          ? _self._additionalParams
          : additionalParams // ignore: cast_nullable_to_non_nullable
              as List<ParamModel>,
      filterParams: null == filterParams
          ? _self._filterParams
          : filterParams // ignore: cast_nullable_to_non_nullable
              as List<ParamModel>,
    ));
  }
}

/// @nodoc
mixin _$CubitTemplateModel {
  String get name;
  String get returnType;
  bool get hasFilter;
  List<MethodModel> get crudMethods;
  String get filterSuffix;
  String get loaderMethodName;
  String? get blocMixins;
  bool get hasBlocMixins;

  /// Create a copy of CubitTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CubitTemplateModelCopyWith<CubitTemplateModel> get copyWith =>
      _$CubitTemplateModelCopyWithImpl<CubitTemplateModel>(
          this as CubitTemplateModel, _$identity);

  /// Serializes this CubitTemplateModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CubitTemplateModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.hasFilter, hasFilter) ||
                other.hasFilter == hasFilter) &&
            const DeepCollectionEquality()
                .equals(other.crudMethods, crudMethods) &&
            (identical(other.filterSuffix, filterSuffix) ||
                other.filterSuffix == filterSuffix) &&
            (identical(other.loaderMethodName, loaderMethodName) ||
                other.loaderMethodName == loaderMethodName) &&
            (identical(other.blocMixins, blocMixins) ||
                other.blocMixins == blocMixins) &&
            (identical(other.hasBlocMixins, hasBlocMixins) ||
                other.hasBlocMixins == hasBlocMixins));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      returnType,
      hasFilter,
      const DeepCollectionEquality().hash(crudMethods),
      filterSuffix,
      loaderMethodName,
      blocMixins,
      hasBlocMixins);

  @override
  String toString() {
    return 'CubitTemplateModel(name: $name, returnType: $returnType, hasFilter: $hasFilter, crudMethods: $crudMethods, filterSuffix: $filterSuffix, loaderMethodName: $loaderMethodName, blocMixins: $blocMixins, hasBlocMixins: $hasBlocMixins)';
  }
}

/// @nodoc
abstract mixin class $CubitTemplateModelCopyWith<$Res> {
  factory $CubitTemplateModelCopyWith(
          CubitTemplateModel value, $Res Function(CubitTemplateModel) _then) =
      _$CubitTemplateModelCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String returnType,
      bool hasFilter,
      List<MethodModel> crudMethods,
      String filterSuffix,
      String loaderMethodName,
      String? blocMixins,
      bool hasBlocMixins});
}

/// @nodoc
class _$CubitTemplateModelCopyWithImpl<$Res>
    implements $CubitTemplateModelCopyWith<$Res> {
  _$CubitTemplateModelCopyWithImpl(this._self, this._then);

  final CubitTemplateModel _self;
  final $Res Function(CubitTemplateModel) _then;

  /// Create a copy of CubitTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? returnType = null,
    Object? hasFilter = null,
    Object? crudMethods = null,
    Object? filterSuffix = null,
    Object? loaderMethodName = null,
    Object? blocMixins = freezed,
    Object? hasBlocMixins = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnType: null == returnType
          ? _self.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String,
      hasFilter: null == hasFilter
          ? _self.hasFilter
          : hasFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      crudMethods: null == crudMethods
          ? _self.crudMethods
          : crudMethods // ignore: cast_nullable_to_non_nullable
              as List<MethodModel>,
      filterSuffix: null == filterSuffix
          ? _self.filterSuffix
          : filterSuffix // ignore: cast_nullable_to_non_nullable
              as String,
      loaderMethodName: null == loaderMethodName
          ? _self.loaderMethodName
          : loaderMethodName // ignore: cast_nullable_to_non_nullable
              as String,
      blocMixins: freezed == blocMixins
          ? _self.blocMixins
          : blocMixins // ignore: cast_nullable_to_non_nullable
              as String?,
      hasBlocMixins: null == hasBlocMixins
          ? _self.hasBlocMixins
          : hasBlocMixins // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _CubitTemplateModel implements CubitTemplateModel {
  const _CubitTemplateModel(
      {required this.name,
      required this.returnType,
      this.hasFilter = false,
      required final List<MethodModel> crudMethods,
      required this.filterSuffix,
      required this.loaderMethodName,
      this.blocMixins,
      this.hasBlocMixins = false})
      : _crudMethods = crudMethods;
  factory _CubitTemplateModel.fromJson(Map<String, dynamic> json) =>
      _$CubitTemplateModelFromJson(json);

  @override
  final String name;
  @override
  final String returnType;
  @override
  @JsonKey()
  final bool hasFilter;
  final List<MethodModel> _crudMethods;
  @override
  List<MethodModel> get crudMethods {
    if (_crudMethods is EqualUnmodifiableListView) return _crudMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crudMethods);
  }

  @override
  final String filterSuffix;
  @override
  final String loaderMethodName;
  @override
  final String? blocMixins;
  @override
  @JsonKey()
  final bool hasBlocMixins;

  /// Create a copy of CubitTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CubitTemplateModelCopyWith<_CubitTemplateModel> get copyWith =>
      __$CubitTemplateModelCopyWithImpl<_CubitTemplateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CubitTemplateModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CubitTemplateModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.hasFilter, hasFilter) ||
                other.hasFilter == hasFilter) &&
            const DeepCollectionEquality()
                .equals(other._crudMethods, _crudMethods) &&
            (identical(other.filterSuffix, filterSuffix) ||
                other.filterSuffix == filterSuffix) &&
            (identical(other.loaderMethodName, loaderMethodName) ||
                other.loaderMethodName == loaderMethodName) &&
            (identical(other.blocMixins, blocMixins) ||
                other.blocMixins == blocMixins) &&
            (identical(other.hasBlocMixins, hasBlocMixins) ||
                other.hasBlocMixins == hasBlocMixins));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      returnType,
      hasFilter,
      const DeepCollectionEquality().hash(_crudMethods),
      filterSuffix,
      loaderMethodName,
      blocMixins,
      hasBlocMixins);

  @override
  String toString() {
    return 'CubitTemplateModel(name: $name, returnType: $returnType, hasFilter: $hasFilter, crudMethods: $crudMethods, filterSuffix: $filterSuffix, loaderMethodName: $loaderMethodName, blocMixins: $blocMixins, hasBlocMixins: $hasBlocMixins)';
  }
}

/// @nodoc
abstract mixin class _$CubitTemplateModelCopyWith<$Res>
    implements $CubitTemplateModelCopyWith<$Res> {
  factory _$CubitTemplateModelCopyWith(
          _CubitTemplateModel value, $Res Function(_CubitTemplateModel) _then) =
      __$CubitTemplateModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String returnType,
      bool hasFilter,
      List<MethodModel> crudMethods,
      String filterSuffix,
      String loaderMethodName,
      String? blocMixins,
      bool hasBlocMixins});
}

/// @nodoc
class __$CubitTemplateModelCopyWithImpl<$Res>
    implements _$CubitTemplateModelCopyWith<$Res> {
  __$CubitTemplateModelCopyWithImpl(this._self, this._then);

  final _CubitTemplateModel _self;
  final $Res Function(_CubitTemplateModel) _then;

  /// Create a copy of CubitTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? returnType = null,
    Object? hasFilter = null,
    Object? crudMethods = null,
    Object? filterSuffix = null,
    Object? loaderMethodName = null,
    Object? blocMixins = freezed,
    Object? hasBlocMixins = null,
  }) {
    return _then(_CubitTemplateModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      returnType: null == returnType
          ? _self.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as String,
      hasFilter: null == hasFilter
          ? _self.hasFilter
          : hasFilter // ignore: cast_nullable_to_non_nullable
              as bool,
      crudMethods: null == crudMethods
          ? _self._crudMethods
          : crudMethods // ignore: cast_nullable_to_non_nullable
              as List<MethodModel>,
      filterSuffix: null == filterSuffix
          ? _self.filterSuffix
          : filterSuffix // ignore: cast_nullable_to_non_nullable
              as String,
      loaderMethodName: null == loaderMethodName
          ? _self.loaderMethodName
          : loaderMethodName // ignore: cast_nullable_to_non_nullable
              as String,
      blocMixins: freezed == blocMixins
          ? _self.blocMixins
          : blocMixins // ignore: cast_nullable_to_non_nullable
              as String?,
      hasBlocMixins: null == hasBlocMixins
          ? _self.hasBlocMixins
          : hasBlocMixins // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$BuiltListJsonConverterModel {
  String get converterName;
  String get innerReturnType;
  bool get shouldCreateConverter;

  /// Create a copy of BuiltListJsonConverterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BuiltListJsonConverterModelCopyWith<BuiltListJsonConverterModel>
      get copyWith => _$BuiltListJsonConverterModelCopyWithImpl<
              BuiltListJsonConverterModel>(
          this as BuiltListJsonConverterModel, _$identity);

  /// Serializes this BuiltListJsonConverterModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BuiltListJsonConverterModel &&
            (identical(other.converterName, converterName) ||
                other.converterName == converterName) &&
            (identical(other.innerReturnType, innerReturnType) ||
                other.innerReturnType == innerReturnType) &&
            (identical(other.shouldCreateConverter, shouldCreateConverter) ||
                other.shouldCreateConverter == shouldCreateConverter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, converterName, innerReturnType, shouldCreateConverter);

  @override
  String toString() {
    return 'BuiltListJsonConverterModel(converterName: $converterName, innerReturnType: $innerReturnType, shouldCreateConverter: $shouldCreateConverter)';
  }
}

/// @nodoc
abstract mixin class $BuiltListJsonConverterModelCopyWith<$Res> {
  factory $BuiltListJsonConverterModelCopyWith(
          BuiltListJsonConverterModel value,
          $Res Function(BuiltListJsonConverterModel) _then) =
      _$BuiltListJsonConverterModelCopyWithImpl;
  @useResult
  $Res call(
      {String converterName,
      String innerReturnType,
      bool shouldCreateConverter});
}

/// @nodoc
class _$BuiltListJsonConverterModelCopyWithImpl<$Res>
    implements $BuiltListJsonConverterModelCopyWith<$Res> {
  _$BuiltListJsonConverterModelCopyWithImpl(this._self, this._then);

  final BuiltListJsonConverterModel _self;
  final $Res Function(BuiltListJsonConverterModel) _then;

  /// Create a copy of BuiltListJsonConverterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? converterName = null,
    Object? innerReturnType = null,
    Object? shouldCreateConverter = null,
  }) {
    return _then(_self.copyWith(
      converterName: null == converterName
          ? _self.converterName
          : converterName // ignore: cast_nullable_to_non_nullable
              as String,
      innerReturnType: null == innerReturnType
          ? _self.innerReturnType
          : innerReturnType // ignore: cast_nullable_to_non_nullable
              as String,
      shouldCreateConverter: null == shouldCreateConverter
          ? _self.shouldCreateConverter
          : shouldCreateConverter // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BuiltListJsonConverterModel implements BuiltListJsonConverterModel {
  const _BuiltListJsonConverterModel(
      {required this.converterName,
      required this.innerReturnType,
      this.shouldCreateConverter = true});
  factory _BuiltListJsonConverterModel.fromJson(Map<String, dynamic> json) =>
      _$BuiltListJsonConverterModelFromJson(json);

  @override
  final String converterName;
  @override
  final String innerReturnType;
  @override
  @JsonKey()
  final bool shouldCreateConverter;

  /// Create a copy of BuiltListJsonConverterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BuiltListJsonConverterModelCopyWith<_BuiltListJsonConverterModel>
      get copyWith => __$BuiltListJsonConverterModelCopyWithImpl<
          _BuiltListJsonConverterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BuiltListJsonConverterModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BuiltListJsonConverterModel &&
            (identical(other.converterName, converterName) ||
                other.converterName == converterName) &&
            (identical(other.innerReturnType, innerReturnType) ||
                other.innerReturnType == innerReturnType) &&
            (identical(other.shouldCreateConverter, shouldCreateConverter) ||
                other.shouldCreateConverter == shouldCreateConverter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, converterName, innerReturnType, shouldCreateConverter);

  @override
  String toString() {
    return 'BuiltListJsonConverterModel(converterName: $converterName, innerReturnType: $innerReturnType, shouldCreateConverter: $shouldCreateConverter)';
  }
}

/// @nodoc
abstract mixin class _$BuiltListJsonConverterModelCopyWith<$Res>
    implements $BuiltListJsonConverterModelCopyWith<$Res> {
  factory _$BuiltListJsonConverterModelCopyWith(
          _BuiltListJsonConverterModel value,
          $Res Function(_BuiltListJsonConverterModel) _then) =
      __$BuiltListJsonConverterModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String converterName,
      String innerReturnType,
      bool shouldCreateConverter});
}

/// @nodoc
class __$BuiltListJsonConverterModelCopyWithImpl<$Res>
    implements _$BuiltListJsonConverterModelCopyWith<$Res> {
  __$BuiltListJsonConverterModelCopyWithImpl(this._self, this._then);

  final _BuiltListJsonConverterModel _self;
  final $Res Function(_BuiltListJsonConverterModel) _then;

  /// Create a copy of BuiltListJsonConverterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? converterName = null,
    Object? innerReturnType = null,
    Object? shouldCreateConverter = null,
  }) {
    return _then(_BuiltListJsonConverterModel(
      converterName: null == converterName
          ? _self.converterName
          : converterName // ignore: cast_nullable_to_non_nullable
              as String,
      innerReturnType: null == innerReturnType
          ? _self.innerReturnType
          : innerReturnType // ignore: cast_nullable_to_non_nullable
              as String,
      shouldCreateConverter: null == shouldCreateConverter
          ? _self.shouldCreateConverter
          : shouldCreateConverter // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$BuiltListJsonConverterTemplateModel {
  String get converterName;
  String get innerReturnType;

  /// Create a copy of BuiltListJsonConverterTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BuiltListJsonConverterTemplateModelCopyWith<
          BuiltListJsonConverterTemplateModel>
      get copyWith => _$BuiltListJsonConverterTemplateModelCopyWithImpl<
              BuiltListJsonConverterTemplateModel>(
          this as BuiltListJsonConverterTemplateModel, _$identity);

  /// Serializes this BuiltListJsonConverterTemplateModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BuiltListJsonConverterTemplateModel &&
            (identical(other.converterName, converterName) ||
                other.converterName == converterName) &&
            (identical(other.innerReturnType, innerReturnType) ||
                other.innerReturnType == innerReturnType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, converterName, innerReturnType);

  @override
  String toString() {
    return 'BuiltListJsonConverterTemplateModel(converterName: $converterName, innerReturnType: $innerReturnType)';
  }
}

/// @nodoc
abstract mixin class $BuiltListJsonConverterTemplateModelCopyWith<$Res> {
  factory $BuiltListJsonConverterTemplateModelCopyWith(
          BuiltListJsonConverterTemplateModel value,
          $Res Function(BuiltListJsonConverterTemplateModel) _then) =
      _$BuiltListJsonConverterTemplateModelCopyWithImpl;
  @useResult
  $Res call({String converterName, String innerReturnType});
}

/// @nodoc
class _$BuiltListJsonConverterTemplateModelCopyWithImpl<$Res>
    implements $BuiltListJsonConverterTemplateModelCopyWith<$Res> {
  _$BuiltListJsonConverterTemplateModelCopyWithImpl(this._self, this._then);

  final BuiltListJsonConverterTemplateModel _self;
  final $Res Function(BuiltListJsonConverterTemplateModel) _then;

  /// Create a copy of BuiltListJsonConverterTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? converterName = null,
    Object? innerReturnType = null,
  }) {
    return _then(_self.copyWith(
      converterName: null == converterName
          ? _self.converterName
          : converterName // ignore: cast_nullable_to_non_nullable
              as String,
      innerReturnType: null == innerReturnType
          ? _self.innerReturnType
          : innerReturnType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BuiltListJsonConverterTemplateModel
    implements BuiltListJsonConverterTemplateModel {
  const _BuiltListJsonConverterTemplateModel(
      {required this.converterName, required this.innerReturnType});
  factory _BuiltListJsonConverterTemplateModel.fromJson(
          Map<String, dynamic> json) =>
      _$BuiltListJsonConverterTemplateModelFromJson(json);

  @override
  final String converterName;
  @override
  final String innerReturnType;

  /// Create a copy of BuiltListJsonConverterTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BuiltListJsonConverterTemplateModelCopyWith<
          _BuiltListJsonConverterTemplateModel>
      get copyWith => __$BuiltListJsonConverterTemplateModelCopyWithImpl<
          _BuiltListJsonConverterTemplateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BuiltListJsonConverterTemplateModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BuiltListJsonConverterTemplateModel &&
            (identical(other.converterName, converterName) ||
                other.converterName == converterName) &&
            (identical(other.innerReturnType, innerReturnType) ||
                other.innerReturnType == innerReturnType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, converterName, innerReturnType);

  @override
  String toString() {
    return 'BuiltListJsonConverterTemplateModel(converterName: $converterName, innerReturnType: $innerReturnType)';
  }
}

/// @nodoc
abstract mixin class _$BuiltListJsonConverterTemplateModelCopyWith<$Res>
    implements $BuiltListJsonConverterTemplateModelCopyWith<$Res> {
  factory _$BuiltListJsonConverterTemplateModelCopyWith(
          _BuiltListJsonConverterTemplateModel value,
          $Res Function(_BuiltListJsonConverterTemplateModel) _then) =
      __$BuiltListJsonConverterTemplateModelCopyWithImpl;
  @override
  @useResult
  $Res call({String converterName, String innerReturnType});
}

/// @nodoc
class __$BuiltListJsonConverterTemplateModelCopyWithImpl<$Res>
    implements _$BuiltListJsonConverterTemplateModelCopyWith<$Res> {
  __$BuiltListJsonConverterTemplateModelCopyWithImpl(this._self, this._then);

  final _BuiltListJsonConverterTemplateModel _self;
  final $Res Function(_BuiltListJsonConverterTemplateModel) _then;

  /// Create a copy of BuiltListJsonConverterTemplateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? converterName = null,
    Object? innerReturnType = null,
  }) {
    return _then(_BuiltListJsonConverterTemplateModel(
      converterName: null == converterName
          ? _self.converterName
          : converterName // ignore: cast_nullable_to_non_nullable
              as String,
      innerReturnType: null == innerReturnType
          ? _self.innerReturnType
          : innerReturnType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
