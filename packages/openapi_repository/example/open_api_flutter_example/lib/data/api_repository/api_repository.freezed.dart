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

PetRetrieveFilter _$PetRetrieveFilterFromJson(Map<String, dynamic> json) {
  return _PetRetrieveFilter.fromJson(json);
}

/// @nodoc
mixin _$PetRetrieveFilter {
  int get petId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetRetrieveFilterCopyWith<PetRetrieveFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetRetrieveFilterCopyWith<$Res> {
  factory $PetRetrieveFilterCopyWith(
          PetRetrieveFilter value, $Res Function(PetRetrieveFilter) then) =
      _$PetRetrieveFilterCopyWithImpl<$Res>;
  $Res call({int petId});
}

/// @nodoc
class _$PetRetrieveFilterCopyWithImpl<$Res>
    implements $PetRetrieveFilterCopyWith<$Res> {
  _$PetRetrieveFilterCopyWithImpl(this._value, this._then);

  final PetRetrieveFilter _value;
  // ignore: unused_field
  final $Res Function(PetRetrieveFilter) _then;

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
abstract class _$$_PetRetrieveFilterCopyWith<$Res>
    implements $PetRetrieveFilterCopyWith<$Res> {
  factory _$$_PetRetrieveFilterCopyWith(_$_PetRetrieveFilter value,
          $Res Function(_$_PetRetrieveFilter) then) =
      __$$_PetRetrieveFilterCopyWithImpl<$Res>;
  @override
  $Res call({int petId});
}

/// @nodoc
class __$$_PetRetrieveFilterCopyWithImpl<$Res>
    extends _$PetRetrieveFilterCopyWithImpl<$Res>
    implements _$$_PetRetrieveFilterCopyWith<$Res> {
  __$$_PetRetrieveFilterCopyWithImpl(
      _$_PetRetrieveFilter _value, $Res Function(_$_PetRetrieveFilter) _then)
      : super(_value, (v) => _then(v as _$_PetRetrieveFilter));

  @override
  _$_PetRetrieveFilter get _value => super._value as _$_PetRetrieveFilter;

  @override
  $Res call({
    Object? petId = freezed,
  }) {
    return _then(_$_PetRetrieveFilter(
      petId: petId == freezed
          ? _value.petId
          : petId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetRetrieveFilter extends _PetRetrieveFilter
    with DiagnosticableTreeMixin {
  const _$_PetRetrieveFilter({required this.petId}) : super._();

  factory _$_PetRetrieveFilter.fromJson(Map<String, dynamic> json) =>
      _$$_PetRetrieveFilterFromJson(json);

  @override
  final int petId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PetRetrieveFilter(petId: $petId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PetRetrieveFilter'))
      ..add(DiagnosticsProperty('petId', petId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetRetrieveFilter &&
            const DeepCollectionEquality().equals(other.petId, petId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(petId));

  @JsonKey(ignore: true)
  @override
  _$$_PetRetrieveFilterCopyWith<_$_PetRetrieveFilter> get copyWith =>
      __$$_PetRetrieveFilterCopyWithImpl<_$_PetRetrieveFilter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetRetrieveFilterToJson(this);
  }
}

abstract class _PetRetrieveFilter extends PetRetrieveFilter {
  const factory _PetRetrieveFilter({required final int petId}) =
      _$_PetRetrieveFilter;
  const _PetRetrieveFilter._() : super._();

  factory _PetRetrieveFilter.fromJson(Map<String, dynamic> json) =
      _$_PetRetrieveFilter.fromJson;

  @override
  int get petId;
  @override
  @JsonKey(ignore: true)
  _$$_PetRetrieveFilterCopyWith<_$_PetRetrieveFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderRetrieveFilter _$OrderRetrieveFilterFromJson(Map<String, dynamic> json) {
  return _OrderRetrieveFilter.fromJson(json);
}

/// @nodoc
mixin _$OrderRetrieveFilter {
  int get orderId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderRetrieveFilterCopyWith<OrderRetrieveFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderRetrieveFilterCopyWith<$Res> {
  factory $OrderRetrieveFilterCopyWith(
          OrderRetrieveFilter value, $Res Function(OrderRetrieveFilter) then) =
      _$OrderRetrieveFilterCopyWithImpl<$Res>;
  $Res call({int orderId});
}

/// @nodoc
class _$OrderRetrieveFilterCopyWithImpl<$Res>
    implements $OrderRetrieveFilterCopyWith<$Res> {
  _$OrderRetrieveFilterCopyWithImpl(this._value, this._then);

  final OrderRetrieveFilter _value;
  // ignore: unused_field
  final $Res Function(OrderRetrieveFilter) _then;

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
abstract class _$$_OrderRetrieveFilterCopyWith<$Res>
    implements $OrderRetrieveFilterCopyWith<$Res> {
  factory _$$_OrderRetrieveFilterCopyWith(_$_OrderRetrieveFilter value,
          $Res Function(_$_OrderRetrieveFilter) then) =
      __$$_OrderRetrieveFilterCopyWithImpl<$Res>;
  @override
  $Res call({int orderId});
}

/// @nodoc
class __$$_OrderRetrieveFilterCopyWithImpl<$Res>
    extends _$OrderRetrieveFilterCopyWithImpl<$Res>
    implements _$$_OrderRetrieveFilterCopyWith<$Res> {
  __$$_OrderRetrieveFilterCopyWithImpl(_$_OrderRetrieveFilter _value,
      $Res Function(_$_OrderRetrieveFilter) _then)
      : super(_value, (v) => _then(v as _$_OrderRetrieveFilter));

  @override
  _$_OrderRetrieveFilter get _value => super._value as _$_OrderRetrieveFilter;

  @override
  $Res call({
    Object? orderId = freezed,
  }) {
    return _then(_$_OrderRetrieveFilter(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderRetrieveFilter extends _OrderRetrieveFilter
    with DiagnosticableTreeMixin {
  const _$_OrderRetrieveFilter({required this.orderId}) : super._();

  factory _$_OrderRetrieveFilter.fromJson(Map<String, dynamic> json) =>
      _$$_OrderRetrieveFilterFromJson(json);

  @override
  final int orderId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderRetrieveFilter(orderId: $orderId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderRetrieveFilter'))
      ..add(DiagnosticsProperty('orderId', orderId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderRetrieveFilter &&
            const DeepCollectionEquality().equals(other.orderId, orderId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(orderId));

  @JsonKey(ignore: true)
  @override
  _$$_OrderRetrieveFilterCopyWith<_$_OrderRetrieveFilter> get copyWith =>
      __$$_OrderRetrieveFilterCopyWithImpl<_$_OrderRetrieveFilter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderRetrieveFilterToJson(this);
  }
}

abstract class _OrderRetrieveFilter extends OrderRetrieveFilter {
  const factory _OrderRetrieveFilter({required final int orderId}) =
      _$_OrderRetrieveFilter;
  const _OrderRetrieveFilter._() : super._();

  factory _OrderRetrieveFilter.fromJson(Map<String, dynamic> json) =
      _$_OrderRetrieveFilter.fromJson;

  @override
  int get orderId;
  @override
  @JsonKey(ignore: true)
  _$$_OrderRetrieveFilterCopyWith<_$_OrderRetrieveFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

UserByUsernameRetrieveFilter _$UserByUsernameRetrieveFilterFromJson(
    Map<String, dynamic> json) {
  return _UserByUsernameRetrieveFilter.fromJson(json);
}

/// @nodoc
mixin _$UserByUsernameRetrieveFilter {
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserByUsernameRetrieveFilterCopyWith<UserByUsernameRetrieveFilter>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserByUsernameRetrieveFilterCopyWith<$Res> {
  factory $UserByUsernameRetrieveFilterCopyWith(
          UserByUsernameRetrieveFilter value,
          $Res Function(UserByUsernameRetrieveFilter) then) =
      _$UserByUsernameRetrieveFilterCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$UserByUsernameRetrieveFilterCopyWithImpl<$Res>
    implements $UserByUsernameRetrieveFilterCopyWith<$Res> {
  _$UserByUsernameRetrieveFilterCopyWithImpl(this._value, this._then);

  final UserByUsernameRetrieveFilter _value;
  // ignore: unused_field
  final $Res Function(UserByUsernameRetrieveFilter) _then;

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
abstract class _$$_UserByUsernameRetrieveFilterCopyWith<$Res>
    implements $UserByUsernameRetrieveFilterCopyWith<$Res> {
  factory _$$_UserByUsernameRetrieveFilterCopyWith(
          _$_UserByUsernameRetrieveFilter value,
          $Res Function(_$_UserByUsernameRetrieveFilter) then) =
      __$$_UserByUsernameRetrieveFilterCopyWithImpl<$Res>;
  @override
  $Res call({String username});
}

/// @nodoc
class __$$_UserByUsernameRetrieveFilterCopyWithImpl<$Res>
    extends _$UserByUsernameRetrieveFilterCopyWithImpl<$Res>
    implements _$$_UserByUsernameRetrieveFilterCopyWith<$Res> {
  __$$_UserByUsernameRetrieveFilterCopyWithImpl(
      _$_UserByUsernameRetrieveFilter _value,
      $Res Function(_$_UserByUsernameRetrieveFilter) _then)
      : super(_value, (v) => _then(v as _$_UserByUsernameRetrieveFilter));

  @override
  _$_UserByUsernameRetrieveFilter get _value =>
      super._value as _$_UserByUsernameRetrieveFilter;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$_UserByUsernameRetrieveFilter(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserByUsernameRetrieveFilter extends _UserByUsernameRetrieveFilter
    with DiagnosticableTreeMixin {
  const _$_UserByUsernameRetrieveFilter({required this.username}) : super._();

  factory _$_UserByUsernameRetrieveFilter.fromJson(Map<String, dynamic> json) =>
      _$$_UserByUsernameRetrieveFilterFromJson(json);

  @override
  final String username;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserByUsernameRetrieveFilter(username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserByUsernameRetrieveFilter'))
      ..add(DiagnosticsProperty('username', username));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserByUsernameRetrieveFilter &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_UserByUsernameRetrieveFilterCopyWith<_$_UserByUsernameRetrieveFilter>
      get copyWith => __$$_UserByUsernameRetrieveFilterCopyWithImpl<
          _$_UserByUsernameRetrieveFilter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserByUsernameRetrieveFilterToJson(this);
  }
}

abstract class _UserByUsernameRetrieveFilter
    extends UserByUsernameRetrieveFilter {
  const factory _UserByUsernameRetrieveFilter(
      {required final String username}) = _$_UserByUsernameRetrieveFilter;
  const _UserByUsernameRetrieveFilter._() : super._();

  factory _UserByUsernameRetrieveFilter.fromJson(Map<String, dynamic> json) =
      _$_UserByUsernameRetrieveFilter.fromJson;

  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_UserByUsernameRetrieveFilterCopyWith<_$_UserByUsernameRetrieveFilter>
      get copyWith => throw _privateConstructorUsedError;
}
