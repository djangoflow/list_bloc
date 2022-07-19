// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FindPetByStatusListFilter _$FindPetByStatusListFilterFromJson(
    Map<String, dynamic> json) {
  return _FindPetByStatusListFilter.fromJson(json);
}

/// @nodoc
mixin _$FindPetByStatusListFilter {
  BuiltList<String> get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FindPetByStatusListFilterCopyWith<FindPetByStatusListFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindPetByStatusListFilterCopyWith<$Res> {
  factory $FindPetByStatusListFilterCopyWith(FindPetByStatusListFilter value,
          $Res Function(FindPetByStatusListFilter) then) =
      _$FindPetByStatusListFilterCopyWithImpl<$Res>;
  $Res call({BuiltList<String> status});
}

/// @nodoc
class _$FindPetByStatusListFilterCopyWithImpl<$Res>
    implements $FindPetByStatusListFilterCopyWith<$Res> {
  _$FindPetByStatusListFilterCopyWithImpl(this._value, this._then);

  final FindPetByStatusListFilter _value;
  // ignore: unused_field
  final $Res Function(FindPetByStatusListFilter) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BuiltList<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_FindPetByStatusListFilterCopyWith<$Res>
    implements $FindPetByStatusListFilterCopyWith<$Res> {
  factory _$$_FindPetByStatusListFilterCopyWith(
          _$_FindPetByStatusListFilter value,
          $Res Function(_$_FindPetByStatusListFilter) then) =
      __$$_FindPetByStatusListFilterCopyWithImpl<$Res>;
  @override
  $Res call({BuiltList<String> status});
}

/// @nodoc
class __$$_FindPetByStatusListFilterCopyWithImpl<$Res>
    extends _$FindPetByStatusListFilterCopyWithImpl<$Res>
    implements _$$_FindPetByStatusListFilterCopyWith<$Res> {
  __$$_FindPetByStatusListFilterCopyWithImpl(
      _$_FindPetByStatusListFilter _value,
      $Res Function(_$_FindPetByStatusListFilter) _then)
      : super(_value, (v) => _then(v as _$_FindPetByStatusListFilter));

  @override
  _$_FindPetByStatusListFilter get _value =>
      super._value as _$_FindPetByStatusListFilter;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$_FindPetByStatusListFilter(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BuiltList<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@BuiltListStringConverter()
class _$_FindPetByStatusListFilter extends _FindPetByStatusListFilter
    with DiagnosticableTreeMixin {
  const _$_FindPetByStatusListFilter({required this.status}) : super._();

  factory _$_FindPetByStatusListFilter.fromJson(Map<String, dynamic> json) =>
      _$$_FindPetByStatusListFilterFromJson(json);

  @override
  final BuiltList<String> status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FindPetByStatusListFilter(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FindPetByStatusListFilter'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FindPetByStatusListFilter &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_FindPetByStatusListFilterCopyWith<_$_FindPetByStatusListFilter>
      get copyWith => __$$_FindPetByStatusListFilterCopyWithImpl<
          _$_FindPetByStatusListFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FindPetByStatusListFilterToJson(this);
  }
}

abstract class _FindPetByStatusListFilter extends FindPetByStatusListFilter {
  const factory _FindPetByStatusListFilter(
      {required final BuiltList<String> status}) = _$_FindPetByStatusListFilter;
  const _FindPetByStatusListFilter._() : super._();

  factory _FindPetByStatusListFilter.fromJson(Map<String, dynamic> json) =
      _$_FindPetByStatusListFilter.fromJson;

  @override
  BuiltList<String> get status;
  @override
  @JsonKey(ignore: true)
  _$$_FindPetByStatusListFilterCopyWith<_$_FindPetByStatusListFilter>
      get copyWith => throw _privateConstructorUsedError;
}

PetReadFilter _$PetReadFilterFromJson(Map<String, dynamic> json) {
  return _PetReadFilter.fromJson(json);
}

/// @nodoc
mixin _$PetReadFilter {
  int get petId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetReadFilterCopyWith<PetReadFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetReadFilterCopyWith<$Res> {
  factory $PetReadFilterCopyWith(
          PetReadFilter value, $Res Function(PetReadFilter) then) =
      _$PetReadFilterCopyWithImpl<$Res>;
  $Res call({int petId});
}

/// @nodoc
class _$PetReadFilterCopyWithImpl<$Res>
    implements $PetReadFilterCopyWith<$Res> {
  _$PetReadFilterCopyWithImpl(this._value, this._then);

  final PetReadFilter _value;
  // ignore: unused_field
  final $Res Function(PetReadFilter) _then;

  @override
  $Res call({
    Object? petId = freezed,
  }) {
    return _then(_value.copyWith(
      petId: petId == freezed
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_PetReadFilterCopyWith<$Res>
    implements $PetReadFilterCopyWith<$Res> {
  factory _$$_PetReadFilterCopyWith(
          _$_PetReadFilter value, $Res Function(_$_PetReadFilter) then) =
      __$$_PetReadFilterCopyWithImpl<$Res>;
  @override
  $Res call({int petId});
}

/// @nodoc
class __$$_PetReadFilterCopyWithImpl<$Res>
    extends _$PetReadFilterCopyWithImpl<$Res>
    implements _$$_PetReadFilterCopyWith<$Res> {
  __$$_PetReadFilterCopyWithImpl(
      _$_PetReadFilter _value, $Res Function(_$_PetReadFilter) _then)
      : super(_value, (v) => _then(v as _$_PetReadFilter));

  @override
  _$_PetReadFilter get _value => super._value as _$_PetReadFilter;

  @override
  $Res call({
    Object? petId = freezed,
  }) {
    return _then(_$_PetReadFilter(
      petId: petId == freezed
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetReadFilter extends _PetReadFilter with DiagnosticableTreeMixin {
  const _$_PetReadFilter({required this.petId}) : super._();

  factory _$_PetReadFilter.fromJson(Map<String, dynamic> json) =>
      _$$_PetReadFilterFromJson(json);

  @override
  final int petId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PetReadFilter(petId: $petId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PetReadFilter'))
      ..add(DiagnosticsProperty('petId', petId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetReadFilter &&
            const DeepCollectionEquality().equals(other.petId, petId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(petId));

  @JsonKey(ignore: true)
  @override
  _$$_PetReadFilterCopyWith<_$_PetReadFilter> get copyWith =>
      __$$_PetReadFilterCopyWithImpl<_$_PetReadFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetReadFilterToJson(this);
  }
}

abstract class _PetReadFilter extends PetReadFilter {
  const factory _PetReadFilter({required final int petId}) = _$_PetReadFilter;
  const _PetReadFilter._() : super._();

  factory _PetReadFilter.fromJson(Map<String, dynamic> json) =
      _$_PetReadFilter.fromJson;

  @override
  int get petId;
  @override
  @JsonKey(ignore: true)
  _$$_PetReadFilterCopyWith<_$_PetReadFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderReadFilter _$OrderReadFilterFromJson(Map<String, dynamic> json) {
  return _OrderReadFilter.fromJson(json);
}

/// @nodoc
mixin _$OrderReadFilter {
  int get orderId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderReadFilterCopyWith<OrderReadFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderReadFilterCopyWith<$Res> {
  factory $OrderReadFilterCopyWith(
          OrderReadFilter value, $Res Function(OrderReadFilter) then) =
      _$OrderReadFilterCopyWithImpl<$Res>;
  $Res call({int orderId});
}

/// @nodoc
class _$OrderReadFilterCopyWithImpl<$Res>
    implements $OrderReadFilterCopyWith<$Res> {
  _$OrderReadFilterCopyWithImpl(this._value, this._then);

  final OrderReadFilter _value;
  // ignore: unused_field
  final $Res Function(OrderReadFilter) _then;

  @override
  $Res call({
    Object? orderId = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderReadFilterCopyWith<$Res>
    implements $OrderReadFilterCopyWith<$Res> {
  factory _$$_OrderReadFilterCopyWith(
          _$_OrderReadFilter value, $Res Function(_$_OrderReadFilter) then) =
      __$$_OrderReadFilterCopyWithImpl<$Res>;
  @override
  $Res call({int orderId});
}

/// @nodoc
class __$$_OrderReadFilterCopyWithImpl<$Res>
    extends _$OrderReadFilterCopyWithImpl<$Res>
    implements _$$_OrderReadFilterCopyWith<$Res> {
  __$$_OrderReadFilterCopyWithImpl(
      _$_OrderReadFilter _value, $Res Function(_$_OrderReadFilter) _then)
      : super(_value, (v) => _then(v as _$_OrderReadFilter));

  @override
  _$_OrderReadFilter get _value => super._value as _$_OrderReadFilter;

  @override
  $Res call({
    Object? orderId = freezed,
  }) {
    return _then(_$_OrderReadFilter(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderReadFilter extends _OrderReadFilter with DiagnosticableTreeMixin {
  const _$_OrderReadFilter({required this.orderId}) : super._();

  factory _$_OrderReadFilter.fromJson(Map<String, dynamic> json) =>
      _$$_OrderReadFilterFromJson(json);

  @override
  final int orderId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderReadFilter(orderId: $orderId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderReadFilter'))
      ..add(DiagnosticsProperty('orderId', orderId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderReadFilter &&
            const DeepCollectionEquality().equals(other.orderId, orderId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(orderId));

  @JsonKey(ignore: true)
  @override
  _$$_OrderReadFilterCopyWith<_$_OrderReadFilter> get copyWith =>
      __$$_OrderReadFilterCopyWithImpl<_$_OrderReadFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderReadFilterToJson(this);
  }
}

abstract class _OrderReadFilter extends OrderReadFilter {
  const factory _OrderReadFilter({required final int orderId}) =
      _$_OrderReadFilter;
  const _OrderReadFilter._() : super._();

  factory _OrderReadFilter.fromJson(Map<String, dynamic> json) =
      _$_OrderReadFilter.fromJson;

  @override
  int get orderId;
  @override
  @JsonKey(ignore: true)
  _$$_OrderReadFilterCopyWith<_$_OrderReadFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

UserByUsernameReadFilter _$UserByUsernameReadFilterFromJson(
    Map<String, dynamic> json) {
  return _UserByUsernameReadFilter.fromJson(json);
}

/// @nodoc
mixin _$UserByUsernameReadFilter {
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserByUsernameReadFilterCopyWith<UserByUsernameReadFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserByUsernameReadFilterCopyWith<$Res> {
  factory $UserByUsernameReadFilterCopyWith(UserByUsernameReadFilter value,
          $Res Function(UserByUsernameReadFilter) then) =
      _$UserByUsernameReadFilterCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$UserByUsernameReadFilterCopyWithImpl<$Res>
    implements $UserByUsernameReadFilterCopyWith<$Res> {
  _$UserByUsernameReadFilterCopyWithImpl(this._value, this._then);

  final UserByUsernameReadFilter _value;
  // ignore: unused_field
  final $Res Function(UserByUsernameReadFilter) _then;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserByUsernameReadFilterCopyWith<$Res>
    implements $UserByUsernameReadFilterCopyWith<$Res> {
  factory _$$_UserByUsernameReadFilterCopyWith(
          _$_UserByUsernameReadFilter value,
          $Res Function(_$_UserByUsernameReadFilter) then) =
      __$$_UserByUsernameReadFilterCopyWithImpl<$Res>;
  @override
  $Res call({String username});
}

/// @nodoc
class __$$_UserByUsernameReadFilterCopyWithImpl<$Res>
    extends _$UserByUsernameReadFilterCopyWithImpl<$Res>
    implements _$$_UserByUsernameReadFilterCopyWith<$Res> {
  __$$_UserByUsernameReadFilterCopyWithImpl(_$_UserByUsernameReadFilter _value,
      $Res Function(_$_UserByUsernameReadFilter) _then)
      : super(_value, (v) => _then(v as _$_UserByUsernameReadFilter));

  @override
  _$_UserByUsernameReadFilter get _value =>
      super._value as _$_UserByUsernameReadFilter;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$_UserByUsernameReadFilter(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserByUsernameReadFilter extends _UserByUsernameReadFilter
    with DiagnosticableTreeMixin {
  const _$_UserByUsernameReadFilter({required this.username}) : super._();

  factory _$_UserByUsernameReadFilter.fromJson(Map<String, dynamic> json) =>
      _$$_UserByUsernameReadFilterFromJson(json);

  @override
  final String username;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserByUsernameReadFilter(username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserByUsernameReadFilter'))
      ..add(DiagnosticsProperty('username', username));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserByUsernameReadFilter &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_UserByUsernameReadFilterCopyWith<_$_UserByUsernameReadFilter>
      get copyWith => __$$_UserByUsernameReadFilterCopyWithImpl<
          _$_UserByUsernameReadFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserByUsernameReadFilterToJson(this);
  }
}

abstract class _UserByUsernameReadFilter extends UserByUsernameReadFilter {
  const factory _UserByUsernameReadFilter({required final String username}) =
      _$_UserByUsernameReadFilter;
  const _UserByUsernameReadFilter._() : super._();

  factory _UserByUsernameReadFilter.fromJson(Map<String, dynamic> json) =
      _$_UserByUsernameReadFilter.fromJson;

  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_UserByUsernameReadFilterCopyWith<_$_UserByUsernameReadFilter>
      get copyWith => throw _privateConstructorUsedError;
}
