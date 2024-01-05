// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListPage<T> {
  List<T>? get data => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListPageCopyWith<T, ListPage<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPageCopyWith<T, $Res> {
  factory $ListPageCopyWith(
          ListPage<T> value, $Res Function(ListPage<T>) then) =
      _$ListPageCopyWithImpl<T, $Res, ListPage<T>>;
  @useResult
  $Res call({List<T>? data, int? count, int number, int size});
}

/// @nodoc
class _$ListPageCopyWithImpl<T, $Res, $Val extends ListPage<T>>
    implements $ListPageCopyWith<T, $Res> {
  _$ListPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? count = freezed,
    Object? number = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListPageImplCopyWith<T, $Res>
    implements $ListPageCopyWith<T, $Res> {
  factory _$$ListPageImplCopyWith(
          _$ListPageImpl<T> value, $Res Function(_$ListPageImpl<T>) then) =
      __$$ListPageImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T>? data, int? count, int number, int size});
}

/// @nodoc
class __$$ListPageImplCopyWithImpl<T, $Res>
    extends _$ListPageCopyWithImpl<T, $Res, _$ListPageImpl<T>>
    implements _$$ListPageImplCopyWith<T, $Res> {
  __$$ListPageImplCopyWithImpl(
      _$ListPageImpl<T> _value, $Res Function(_$ListPageImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? count = freezed,
    Object? number = null,
    Object? size = null,
  }) {
    return _then(_$ListPageImpl<T>(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ListPageImpl<T> extends _ListPage<T> {
  const _$ListPageImpl(
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

  @override
  String toString() {
    return 'ListPage<$T>(data: $data, count: $count, number: $number, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListPageImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), count, number, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListPageImplCopyWith<T, _$ListPageImpl<T>> get copyWith =>
      __$$ListPageImplCopyWithImpl<T, _$ListPageImpl<T>>(this, _$identity);
}

abstract class _ListPage<T> extends ListPage<T> {
  const factory _ListPage(
      {final List<T>? data,
      final int? count,
      required final int number,
      required final int size}) = _$ListPageImpl<T>;
  const _ListPage._() : super._();

  @override
  List<T>? get data;
  @override
  int? get count;
  @override
  int get number;
  @override
  int get size;
  @override
  @JsonKey(ignore: true)
  _$$ListPageImplCopyWith<T, _$ListPageImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
