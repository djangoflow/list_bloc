// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data<T, F> call<T, F>({T? data, F? filter}) {
    return _Data<T, F>(
      data: data,
      filter: filter,
    );
  }

  Loading<T, F> loading<T, F>({T? data, F? filter}) {
    return Loading<T, F>(
      data: data,
      filter: filter,
    );
  }

  Empty<T, F> empty<T, F>({T? data, F? filter}) {
    return Empty<T, F>(
      data: data,
      filter: filter,
    );
  }

  Error<T, F> error<T, F>({T? data, F? filter, Object? error}) {
    return Error<T, F>(
      data: data,
      filter: filter,
      error: error,
    );
  }
}

/// @nodoc
const $Data = _$DataTearOff();

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
    TResult Function(T? data, F? filter)? $default, {
    TResult Function(T? data, F? filter)? loading,
    TResult Function(T? data, F? filter)? empty,
    TResult Function(T? data, F? filter, Object? error)? error,
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
    TResult Function(_Data<T, F> value)? $default, {
    TResult Function(Loading<T, F> value)? loading,
    TResult Function(Empty<T, F> value)? empty,
    TResult Function(Error<T, F> value)? error,
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
      _$DataCopyWithImpl<T, F, $Res>;
  $Res call({T? data, F? filter});
}

/// @nodoc
class _$DataCopyWithImpl<T, F, $Res> implements $DataCopyWith<T, F, $Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data<T, F> _value;
  // ignore: unused_field
  final $Res Function(Data<T, F>) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<T, F, $Res> implements $DataCopyWith<T, F, $Res> {
  factory _$DataCopyWith(_Data<T, F> value, $Res Function(_Data<T, F>) then) =
      __$DataCopyWithImpl<T, F, $Res>;
  @override
  $Res call({T? data, F? filter});
}

/// @nodoc
class __$DataCopyWithImpl<T, F, $Res> extends _$DataCopyWithImpl<T, F, $Res>
    implements _$DataCopyWith<T, F, $Res> {
  __$DataCopyWithImpl(_Data<T, F> _value, $Res Function(_Data<T, F>) _then)
      : super(_value, (v) => _then(v as _Data<T, F>));

  @override
  _Data<T, F> get _value => super._value as _Data<T, F>;

  @override
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
  }) {
    return _then(_Data<T, F>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
    ));
  }
}

/// @nodoc

class _$_Data<T, F> implements _Data<T, F> {
  const _$_Data({this.data, this.filter});

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
            other is _Data<T, F> &&
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
  _$DataCopyWith<T, F, _Data<T, F>> get copyWith =>
      __$DataCopyWithImpl<T, F, _Data<T, F>>(this, _$identity);

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
    TResult Function(T? data, F? filter)? $default, {
    TResult Function(T? data, F? filter)? loading,
    TResult Function(T? data, F? filter)? empty,
    TResult Function(T? data, F? filter, Object? error)? error,
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
    TResult Function(_Data<T, F> value)? $default, {
    TResult Function(Loading<T, F> value)? loading,
    TResult Function(Empty<T, F> value)? empty,
    TResult Function(Error<T, F> value)? error,
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
  const factory _Data({T? data, F? filter}) = _$_Data<T, F>;

  @override
  T? get data;
  @override
  F? get filter;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<T, F, _Data<T, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<T, F, $Res>
    implements $DataCopyWith<T, F, $Res> {
  factory $LoadingCopyWith(
          Loading<T, F> value, $Res Function(Loading<T, F>) then) =
      _$LoadingCopyWithImpl<T, F, $Res>;
  @override
  $Res call({T? data, F? filter});
}

/// @nodoc
class _$LoadingCopyWithImpl<T, F, $Res> extends _$DataCopyWithImpl<T, F, $Res>
    implements $LoadingCopyWith<T, F, $Res> {
  _$LoadingCopyWithImpl(
      Loading<T, F> _value, $Res Function(Loading<T, F>) _then)
      : super(_value, (v) => _then(v as Loading<T, F>));

  @override
  Loading<T, F> get _value => super._value as Loading<T, F>;

  @override
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
  }) {
    return _then(Loading<T, F>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
    ));
  }
}

/// @nodoc

class _$Loading<T, F> implements Loading<T, F> {
  const _$Loading({this.data, this.filter});

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
            other is Loading<T, F> &&
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
  $LoadingCopyWith<T, F, Loading<T, F>> get copyWith =>
      _$LoadingCopyWithImpl<T, F, Loading<T, F>>(this, _$identity);

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
    TResult Function(T? data, F? filter)? $default, {
    TResult Function(T? data, F? filter)? loading,
    TResult Function(T? data, F? filter)? empty,
    TResult Function(T? data, F? filter, Object? error)? error,
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
    TResult Function(_Data<T, F> value)? $default, {
    TResult Function(Loading<T, F> value)? loading,
    TResult Function(Empty<T, F> value)? empty,
    TResult Function(Error<T, F> value)? error,
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
  const factory Loading({T? data, F? filter}) = _$Loading<T, F>;

  @override
  T? get data;
  @override
  F? get filter;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<T, F, Loading<T, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<T, F, $Res> implements $DataCopyWith<T, F, $Res> {
  factory $EmptyCopyWith(Empty<T, F> value, $Res Function(Empty<T, F>) then) =
      _$EmptyCopyWithImpl<T, F, $Res>;
  @override
  $Res call({T? data, F? filter});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, F, $Res> extends _$DataCopyWithImpl<T, F, $Res>
    implements $EmptyCopyWith<T, F, $Res> {
  _$EmptyCopyWithImpl(Empty<T, F> _value, $Res Function(Empty<T, F>) _then)
      : super(_value, (v) => _then(v as Empty<T, F>));

  @override
  Empty<T, F> get _value => super._value as Empty<T, F>;

  @override
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
  }) {
    return _then(Empty<T, F>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
    ));
  }
}

/// @nodoc

class _$Empty<T, F> implements Empty<T, F> {
  const _$Empty({this.data, this.filter});

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
            other is Empty<T, F> &&
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
  $EmptyCopyWith<T, F, Empty<T, F>> get copyWith =>
      _$EmptyCopyWithImpl<T, F, Empty<T, F>>(this, _$identity);

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
    TResult Function(T? data, F? filter)? $default, {
    TResult Function(T? data, F? filter)? loading,
    TResult Function(T? data, F? filter)? empty,
    TResult Function(T? data, F? filter, Object? error)? error,
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
    TResult Function(_Data<T, F> value)? $default, {
    TResult Function(Loading<T, F> value)? loading,
    TResult Function(Empty<T, F> value)? empty,
    TResult Function(Error<T, F> value)? error,
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
  const factory Empty({T? data, F? filter}) = _$Empty<T, F>;

  @override
  T? get data;
  @override
  F? get filter;
  @override
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, F, Empty<T, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<T, F, $Res> implements $DataCopyWith<T, F, $Res> {
  factory $ErrorCopyWith(Error<T, F> value, $Res Function(Error<T, F>) then) =
      _$ErrorCopyWithImpl<T, F, $Res>;
  @override
  $Res call({T? data, F? filter, Object? error});
}

/// @nodoc
class _$ErrorCopyWithImpl<T, F, $Res> extends _$DataCopyWithImpl<T, F, $Res>
    implements $ErrorCopyWith<T, F, $Res> {
  _$ErrorCopyWithImpl(Error<T, F> _value, $Res Function(Error<T, F>) _then)
      : super(_value, (v) => _then(v as Error<T, F>));

  @override
  Error<T, F> get _value => super._value as Error<T, F>;

  @override
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
    Object? error = freezed,
  }) {
    return _then(Error<T, F>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
      error: error == freezed ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$Error<T, F> implements Error<T, F> {
  const _$Error({this.data, this.filter, this.error});

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
            other is Error<T, F> &&
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
  $ErrorCopyWith<T, F, Error<T, F>> get copyWith =>
      _$ErrorCopyWithImpl<T, F, Error<T, F>>(this, _$identity);

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
    TResult Function(T? data, F? filter)? $default, {
    TResult Function(T? data, F? filter)? loading,
    TResult Function(T? data, F? filter)? empty,
    TResult Function(T? data, F? filter, Object? error)? error,
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
    TResult Function(_Data<T, F> value)? $default, {
    TResult Function(Loading<T, F> value)? loading,
    TResult Function(Empty<T, F> value)? empty,
    TResult Function(Error<T, F> value)? error,
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
  const factory Error({T? data, F? filter, Object? error}) = _$Error<T, F>;

  @override
  T? get data;
  @override
  F? get filter;
  Object? get error;
  @override
  @JsonKey(ignore: true)
  $ErrorCopyWith<T, F, Error<T, F>> get copyWith =>
      throw _privateConstructorUsedError;
}
