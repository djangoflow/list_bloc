// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Data<T, F> {
  T? get data => throw _privateConstructorUsedError;
  F? get filter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T? data, F? filter) $default, {
    required TResult Function(T? data, F? filter) loading,
    required TResult Function(T? data, F? filter) empty,
    required TResult Function(T? data, F? filter, Object? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T? data, F? filter)? $default, {
    TResult? Function(T? data, F? filter)? loading,
    TResult? Function(T? data, F? filter)? empty,
    TResult? Function(T? data, F? filter, Object? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T? data, F? filter)? $default, {
    TResult Function(T? data, F? filter)? loading,
    TResult Function(T? data, F? filter)? empty,
    TResult Function(T? data, F? filter, Object? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Data<T, F> value) $default, {
    required TResult Function(Loading<T, F> value) loading,
    required TResult Function(Empty<T, F> value) empty,
    required TResult Function(Error<T, F> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Data<T, F> value)? $default, {
    TResult? Function(Loading<T, F> value)? loading,
    TResult? Function(Empty<T, F> value)? empty,
    TResult? Function(Error<T, F> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Data<T, F> value)? $default, {
    TResult Function(Loading<T, F> value)? loading,
    TResult Function(Empty<T, F> value)? empty,
    TResult Function(Error<T, F> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataCopyWith<T, F, Data<T, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<T, F, $Res> {
  factory $DataCopyWith(Data<T, F> value, $Res Function(Data<T, F>) then) =
      _$DataCopyWithImpl<T, F, $Res, Data<T, F>>;
  @useResult
  $Res call({T? data, F? filter});
}

/// @nodoc
class _$DataCopyWithImpl<T, F, $Res, $Val extends Data<T, F>>
    implements $DataCopyWith<T, F, $Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<T, F, $Res>
    implements $DataCopyWith<T, F, $Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl<T, F> value, $Res Function(_$DataImpl<T, F>) then) =
      __$$DataImplCopyWithImpl<T, F, $Res>;
  @override
  @useResult
  $Res call({T? data, F? filter});
}

/// @nodoc
class __$$DataImplCopyWithImpl<T, F, $Res>
    extends _$DataCopyWithImpl<T, F, $Res, _$DataImpl<T, F>>
    implements _$$DataImplCopyWith<T, F, $Res> {
  __$$DataImplCopyWithImpl(
      _$DataImpl<T, F> _value, $Res Function(_$DataImpl<T, F>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$DataImpl<T, F>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
    ));
  }
}

/// @nodoc

class _$DataImpl<T, F> implements _Data<T, F> {
  const _$DataImpl({this.data, this.filter});

  @override
  final T? data;
  @override
  final F? filter;

  @override
  String toString() {
    return 'Data<$T, $F>(data: $data, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl<T, F> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<T, F, _$DataImpl<T, F>> get copyWith =>
      __$$DataImplCopyWithImpl<T, F, _$DataImpl<T, F>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T? data, F? filter) $default, {
    required TResult Function(T? data, F? filter) loading,
    required TResult Function(T? data, F? filter) empty,
    required TResult Function(T? data, F? filter, Object? error) error,
  }) {
    return $default(data, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T? data, F? filter)? $default, {
    TResult? Function(T? data, F? filter)? loading,
    TResult? Function(T? data, F? filter)? empty,
    TResult? Function(T? data, F? filter, Object? error)? error,
  }) {
    return $default?.call(data, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T? data, F? filter)? $default, {
    TResult Function(T? data, F? filter)? loading,
    TResult Function(T? data, F? filter)? empty,
    TResult Function(T? data, F? filter, Object? error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(data, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Data<T, F> value) $default, {
    required TResult Function(Loading<T, F> value) loading,
    required TResult Function(Empty<T, F> value) empty,
    required TResult Function(Error<T, F> value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Data<T, F> value)? $default, {
    TResult? Function(Loading<T, F> value)? loading,
    TResult? Function(Empty<T, F> value)? empty,
    TResult? Function(Error<T, F> value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Data<T, F> value)? $default, {
    TResult Function(Loading<T, F> value)? loading,
    TResult Function(Empty<T, F> value)? empty,
    TResult Function(Error<T, F> value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Data<T, F> implements Data<T, F> {
  const factory _Data({final T? data, final F? filter}) = _$DataImpl<T, F>;

  @override
  T? get data;
  @override
  F? get filter;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<T, F, _$DataImpl<T, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, F, $Res>
    implements $DataCopyWith<T, F, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T, F> value, $Res Function(_$LoadingImpl<T, F>) then) =
      __$$LoadingImplCopyWithImpl<T, F, $Res>;
  @override
  @useResult
  $Res call({T? data, F? filter});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, F, $Res>
    extends _$DataCopyWithImpl<T, F, $Res, _$LoadingImpl<T, F>>
    implements _$$LoadingImplCopyWith<T, F, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T, F> _value, $Res Function(_$LoadingImpl<T, F>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$LoadingImpl<T, F>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
    ));
  }
}

/// @nodoc

class _$LoadingImpl<T, F> implements Loading<T, F> {
  const _$LoadingImpl({this.data, this.filter});

  @override
  final T? data;
  @override
  final F? filter;

  @override
  String toString() {
    return 'Data<$T, $F>.loading(data: $data, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl<T, F> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<T, F, _$LoadingImpl<T, F>> get copyWith =>
      __$$LoadingImplCopyWithImpl<T, F, _$LoadingImpl<T, F>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T? data, F? filter) $default, {
    required TResult Function(T? data, F? filter) loading,
    required TResult Function(T? data, F? filter) empty,
    required TResult Function(T? data, F? filter, Object? error) error,
  }) {
    return loading(data, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T? data, F? filter)? $default, {
    TResult? Function(T? data, F? filter)? loading,
    TResult? Function(T? data, F? filter)? empty,
    TResult? Function(T? data, F? filter, Object? error)? error,
  }) {
    return loading?.call(data, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T? data, F? filter)? $default, {
    TResult Function(T? data, F? filter)? loading,
    TResult Function(T? data, F? filter)? empty,
    TResult Function(T? data, F? filter, Object? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Data<T, F> value) $default, {
    required TResult Function(Loading<T, F> value) loading,
    required TResult Function(Empty<T, F> value) empty,
    required TResult Function(Error<T, F> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Data<T, F> value)? $default, {
    TResult? Function(Loading<T, F> value)? loading,
    TResult? Function(Empty<T, F> value)? empty,
    TResult? Function(Error<T, F> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Data<T, F> value)? $default, {
    TResult Function(Loading<T, F> value)? loading,
    TResult Function(Empty<T, F> value)? empty,
    TResult Function(Error<T, F> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T, F> implements Data<T, F> {
  const factory Loading({final T? data, final F? filter}) = _$LoadingImpl<T, F>;

  @override
  T? get data;
  @override
  F? get filter;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<T, F, _$LoadingImpl<T, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<T, F, $Res>
    implements $DataCopyWith<T, F, $Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl<T, F> value, $Res Function(_$EmptyImpl<T, F>) then) =
      __$$EmptyImplCopyWithImpl<T, F, $Res>;
  @override
  @useResult
  $Res call({T? data, F? filter});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<T, F, $Res>
    extends _$DataCopyWithImpl<T, F, $Res, _$EmptyImpl<T, F>>
    implements _$$EmptyImplCopyWith<T, F, $Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl<T, F> _value, $Res Function(_$EmptyImpl<T, F>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$EmptyImpl<T, F>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
    ));
  }
}

/// @nodoc

class _$EmptyImpl<T, F> implements Empty<T, F> {
  const _$EmptyImpl({this.data, this.filter});

  @override
  final T? data;
  @override
  final F? filter;

  @override
  String toString() {
    return 'Data<$T, $F>.empty(data: $data, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl<T, F> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<T, F, _$EmptyImpl<T, F>> get copyWith =>
      __$$EmptyImplCopyWithImpl<T, F, _$EmptyImpl<T, F>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T? data, F? filter) $default, {
    required TResult Function(T? data, F? filter) loading,
    required TResult Function(T? data, F? filter) empty,
    required TResult Function(T? data, F? filter, Object? error) error,
  }) {
    return empty(data, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T? data, F? filter)? $default, {
    TResult? Function(T? data, F? filter)? loading,
    TResult? Function(T? data, F? filter)? empty,
    TResult? Function(T? data, F? filter, Object? error)? error,
  }) {
    return empty?.call(data, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T? data, F? filter)? $default, {
    TResult Function(T? data, F? filter)? loading,
    TResult Function(T? data, F? filter)? empty,
    TResult Function(T? data, F? filter, Object? error)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(data, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Data<T, F> value) $default, {
    required TResult Function(Loading<T, F> value) loading,
    required TResult Function(Empty<T, F> value) empty,
    required TResult Function(Error<T, F> value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Data<T, F> value)? $default, {
    TResult? Function(Loading<T, F> value)? loading,
    TResult? Function(Empty<T, F> value)? empty,
    TResult? Function(Error<T, F> value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Data<T, F> value)? $default, {
    TResult Function(Loading<T, F> value)? loading,
    TResult Function(Empty<T, F> value)? empty,
    TResult Function(Error<T, F> value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T, F> implements Data<T, F> {
  const factory Empty({final T? data, final F? filter}) = _$EmptyImpl<T, F>;

  @override
  T? get data;
  @override
  F? get filter;
  @override
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<T, F, _$EmptyImpl<T, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, F, $Res>
    implements $DataCopyWith<T, F, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T, F> value, $Res Function(_$ErrorImpl<T, F>) then) =
      __$$ErrorImplCopyWithImpl<T, F, $Res>;
  @override
  @useResult
  $Res call({T? data, F? filter, Object? error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, F, $Res>
    extends _$DataCopyWithImpl<T, F, $Res, _$ErrorImpl<T, F>>
    implements _$$ErrorImplCopyWith<T, F, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T, F> _value, $Res Function(_$ErrorImpl<T, F>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ErrorImpl<T, F>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T, F> implements Error<T, F> {
  const _$ErrorImpl({this.data, this.filter, this.error});

  @override
  final T? data;
  @override
  final F? filter;
  @override
  final Object? error;

  @override
  String toString() {
    return 'Data<$T, $F>.error(data: $data, filter: $filter, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T, F> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.filter, filter) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(filter),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, F, _$ErrorImpl<T, F>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, F, _$ErrorImpl<T, F>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T? data, F? filter) $default, {
    required TResult Function(T? data, F? filter) loading,
    required TResult Function(T? data, F? filter) empty,
    required TResult Function(T? data, F? filter, Object? error) error,
  }) {
    return error(data, filter, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T? data, F? filter)? $default, {
    TResult? Function(T? data, F? filter)? loading,
    TResult? Function(T? data, F? filter)? empty,
    TResult? Function(T? data, F? filter, Object? error)? error,
  }) {
    return error?.call(data, filter, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T? data, F? filter)? $default, {
    TResult Function(T? data, F? filter)? loading,
    TResult Function(T? data, F? filter)? empty,
    TResult Function(T? data, F? filter, Object? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data, filter, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Data<T, F> value) $default, {
    required TResult Function(Loading<T, F> value) loading,
    required TResult Function(Empty<T, F> value) empty,
    required TResult Function(Error<T, F> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Data<T, F> value)? $default, {
    TResult? Function(Loading<T, F> value)? loading,
    TResult? Function(Empty<T, F> value)? empty,
    TResult? Function(Error<T, F> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Data<T, F> value)? $default, {
    TResult Function(Loading<T, F> value)? loading,
    TResult Function(Empty<T, F> value)? empty,
    TResult Function(Error<T, F> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T, F> implements Data<T, F> {
  const factory Error({final T? data, final F? filter, final Object? error}) =
      _$ErrorImpl<T, F>;

  @override
  T? get data;
  @override
  F? get filter;
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<T, F, _$ErrorImpl<T, F>> get copyWith =>
      throw _privateConstructorUsedError;
}
