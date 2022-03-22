// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OffsetLimitTearOff {
  const _$OffsetLimitTearOff();

  _OffsetLimit call({int offset = 0, int limit = OffsetLimit.kPageSize}) {
    return _OffsetLimit(
      offset: offset,
      limit: limit,
    );
  }
}

/// @nodoc
const $OffsetLimit = _$OffsetLimitTearOff();

/// @nodoc
mixin _$OffsetLimit {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OffsetLimitCopyWith<OffsetLimit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffsetLimitCopyWith<$Res> {
  factory $OffsetLimitCopyWith(
          OffsetLimit value, $Res Function(OffsetLimit) then) =
      _$OffsetLimitCopyWithImpl<$Res>;
  $Res call({int offset, int limit});
}

/// @nodoc
class _$OffsetLimitCopyWithImpl<$Res> implements $OffsetLimitCopyWith<$Res> {
  _$OffsetLimitCopyWithImpl(this._value, this._then);

  final OffsetLimit _value;
  // ignore: unused_field
  final $Res Function(OffsetLimit) _then;

  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$OffsetLimitCopyWith<$Res>
    implements $OffsetLimitCopyWith<$Res> {
  factory _$OffsetLimitCopyWith(
          _OffsetLimit value, $Res Function(_OffsetLimit) then) =
      __$OffsetLimitCopyWithImpl<$Res>;
  @override
  $Res call({int offset, int limit});
}

/// @nodoc
class __$OffsetLimitCopyWithImpl<$Res> extends _$OffsetLimitCopyWithImpl<$Res>
    implements _$OffsetLimitCopyWith<$Res> {
  __$OffsetLimitCopyWithImpl(
      _OffsetLimit _value, $Res Function(_OffsetLimit) _then)
      : super(_value, (v) => _then(v as _OffsetLimit));

  @override
  _OffsetLimit get _value => super._value as _OffsetLimit;

  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
  }) {
    return _then(_OffsetLimit(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OffsetLimit implements _OffsetLimit {
  const _$_OffsetLimit({this.offset = 0, this.limit = OffsetLimit.kPageSize});

  @JsonKey()
  @override
  final int offset;
  @JsonKey()
  @override
  final int limit;

  @override
  String toString() {
    return 'OffsetLimit(offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OffsetLimit &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.limit, limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(limit));

  @JsonKey(ignore: true)
  @override
  _$OffsetLimitCopyWith<_OffsetLimit> get copyWith =>
      __$OffsetLimitCopyWithImpl<_OffsetLimit>(this, _$identity);
}

abstract class _OffsetLimit implements OffsetLimit {
  const factory _OffsetLimit({int offset, int limit}) = _$_OffsetLimit;

  @override
  int get offset;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$OffsetLimitCopyWith<_OffsetLimit> get copyWith =>
      throw _privateConstructorUsedError;
}
