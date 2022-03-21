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
class _$OffsetLimitFilterTearOff {
  const _$OffsetLimitFilterTearOff();

  _OffsetLimitFilter call({int offset = 0, int limit = kPageSize}) {
    return _OffsetLimitFilter(
      offset: offset,
      limit: limit,
    );
  }
}

/// @nodoc
const $OffsetLimitFilter = _$OffsetLimitFilterTearOff();

/// @nodoc
mixin _$OffsetLimitFilter {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OffsetLimitFilterCopyWith<OffsetLimitFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffsetLimitFilterCopyWith<$Res> {
  factory $OffsetLimitFilterCopyWith(
          OffsetLimitFilter value, $Res Function(OffsetLimitFilter) then) =
      _$OffsetLimitFilterCopyWithImpl<$Res>;
  $Res call({int offset, int limit});
}

/// @nodoc
class _$OffsetLimitFilterCopyWithImpl<$Res>
    implements $OffsetLimitFilterCopyWith<$Res> {
  _$OffsetLimitFilterCopyWithImpl(this._value, this._then);

  final OffsetLimitFilter _value;
  // ignore: unused_field
  final $Res Function(OffsetLimitFilter) _then;

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
abstract class _$OffsetLimitFilterCopyWith<$Res>
    implements $OffsetLimitFilterCopyWith<$Res> {
  factory _$OffsetLimitFilterCopyWith(
          _OffsetLimitFilter value, $Res Function(_OffsetLimitFilter) then) =
      __$OffsetLimitFilterCopyWithImpl<$Res>;
  @override
  $Res call({int offset, int limit});
}

/// @nodoc
class __$OffsetLimitFilterCopyWithImpl<$Res>
    extends _$OffsetLimitFilterCopyWithImpl<$Res>
    implements _$OffsetLimitFilterCopyWith<$Res> {
  __$OffsetLimitFilterCopyWithImpl(
      _OffsetLimitFilter _value, $Res Function(_OffsetLimitFilter) _then)
      : super(_value, (v) => _then(v as _OffsetLimitFilter));

  @override
  _OffsetLimitFilter get _value => super._value as _OffsetLimitFilter;

  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
  }) {
    return _then(_OffsetLimitFilter(
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

class _$_OffsetLimitFilter implements _OffsetLimitFilter {
  const _$_OffsetLimitFilter({this.offset = 0, this.limit = kPageSize});

  @JsonKey()
  @override
  final int offset;
  @JsonKey()
  @override
  final int limit;

  @override
  String toString() {
    return 'OffsetLimitFilter(offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OffsetLimitFilter &&
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
  _$OffsetLimitFilterCopyWith<_OffsetLimitFilter> get copyWith =>
      __$OffsetLimitFilterCopyWithImpl<_OffsetLimitFilter>(this, _$identity);
}

abstract class _OffsetLimitFilter implements OffsetLimitFilter {
  const factory _OffsetLimitFilter({int offset, int limit}) =
      _$_OffsetLimitFilter;

  @override
  int get offset;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$OffsetLimitFilterCopyWith<_OffsetLimitFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
