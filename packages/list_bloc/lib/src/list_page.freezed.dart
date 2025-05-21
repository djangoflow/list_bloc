// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListPage<T> {
  List<T>? get data;
  int? get count;
  int get number;
  int get size;

  /// Create a copy of ListPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListPageCopyWith<T, ListPage<T>> get copyWith =>
      _$ListPageCopyWithImpl<T, ListPage<T>>(this as ListPage<T>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListPage<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), count, number, size);

  @override
  String toString() {
    return 'ListPage<$T>(data: $data, count: $count, number: $number, size: $size)';
  }
}

/// @nodoc
abstract mixin class $ListPageCopyWith<T, $Res> {
  factory $ListPageCopyWith(
          ListPage<T> value, $Res Function(ListPage<T>) _then) =
      _$ListPageCopyWithImpl;
  @useResult
  $Res call({List<T>? data, int? count, int number, int size});
}

/// @nodoc
class _$ListPageCopyWithImpl<T, $Res> implements $ListPageCopyWith<T, $Res> {
  _$ListPageCopyWithImpl(this._self, this._then);

  final ListPage<T> _self;
  final $Res Function(ListPage<T>) _then;

  /// Create a copy of ListPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? count = freezed,
    Object? number = null,
    Object? size = null,
  }) {
    return _then(_self.copyWith(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _ListPage<T> extends ListPage<T> {
  const _ListPage(
      {final List<T>? data,
      this.count,
      required this.number,
      required this.size})
      : _data = data,
        super._();

  final List<T>? _data;
  @override
  List<T>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? count;
  @override
  final int number;
  @override
  final int size;

  /// Create a copy of ListPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ListPageCopyWith<T, _ListPage<T>> get copyWith =>
      __$ListPageCopyWithImpl<T, _ListPage<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListPage<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), count, number, size);

  @override
  String toString() {
    return 'ListPage<$T>(data: $data, count: $count, number: $number, size: $size)';
  }
}

/// @nodoc
abstract mixin class _$ListPageCopyWith<T, $Res>
    implements $ListPageCopyWith<T, $Res> {
  factory _$ListPageCopyWith(
          _ListPage<T> value, $Res Function(_ListPage<T>) _then) =
      __$ListPageCopyWithImpl;
  @override
  @useResult
  $Res call({List<T>? data, int? count, int number, int size});
}

/// @nodoc
class __$ListPageCopyWithImpl<T, $Res> implements _$ListPageCopyWith<T, $Res> {
  __$ListPageCopyWithImpl(this._self, this._then);

  final _ListPage<T> _self;
  final $Res Function(_ListPage<T>) _then;

  /// Create a copy of ListPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
    Object? count = freezed,
    Object? number = null,
    Object? size = null,
  }) {
    return _then(_ListPage<T>(
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      count: freezed == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
