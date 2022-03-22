// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListPageTearOff {
  const _$ListPageTearOff();

  _ListPage<T> call<T>(
      {List<T>? data, int? count, required int number, required int size}) {
    return _ListPage<T>(
      data: data,
      count: count,
      number: number,
      size: size,
    );
  }
}

/// @nodoc
const $ListPage = _$ListPageTearOff();

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
      _$ListPageCopyWithImpl<T, $Res>;
  $Res call({List<T>? data, int? count, int number, int size});
}

/// @nodoc
class _$ListPageCopyWithImpl<T, $Res> implements $ListPageCopyWith<T, $Res> {
  _$ListPageCopyWithImpl(this._value, this._then);

  final ListPage<T> _value;
  // ignore: unused_field
  final $Res Function(ListPage<T>) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? count = freezed,
    Object? number = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ListPageCopyWith<T, $Res>
    implements $ListPageCopyWith<T, $Res> {
  factory _$ListPageCopyWith(
          _ListPage<T> value, $Res Function(_ListPage<T>) then) =
      __$ListPageCopyWithImpl<T, $Res>;
  @override
  $Res call({List<T>? data, int? count, int number, int size});
}

/// @nodoc
class __$ListPageCopyWithImpl<T, $Res> extends _$ListPageCopyWithImpl<T, $Res>
    implements _$ListPageCopyWith<T, $Res> {
  __$ListPageCopyWithImpl(
      _ListPage<T> _value, $Res Function(_ListPage<T>) _then)
      : super(_value, (v) => _then(v as _ListPage<T>));

  @override
  _ListPage<T> get _value => super._value as _ListPage<T>;

  @override
  $Res call({
    Object? data = freezed,
    Object? count = freezed,
    Object? number = freezed,
    Object? size = freezed,
  }) {
    return _then(_ListPage<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ListPage<T> extends _ListPage<T> {
  const _$_ListPage(
      {this.data, this.count, required this.number, required this.size})
      : super._();

  @override
  final List<T>? data;
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
            other is _ListPage<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(size));

  @JsonKey(ignore: true)
  @override
  _$ListPageCopyWith<T, _ListPage<T>> get copyWith =>
      __$ListPageCopyWithImpl<T, _ListPage<T>>(this, _$identity);
}

abstract class _ListPage<T> extends ListPage<T> {
  const factory _ListPage(
      {List<T>? data,
      int? count,
      required int number,
      required int size}) = _$_ListPage<T>;
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
  _$ListPageCopyWith<T, _ListPage<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
