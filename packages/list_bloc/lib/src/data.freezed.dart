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
abstract class _$$_DataCopyWith<T, F, $Res>
    implements $DataCopyWith<T, F, $Res> {
  factory _$$_DataCopyWith(
          _$_Data<T, F> value, $Res Function(_$_Data<T, F>) then) =
      __$$_DataCopyWithImpl<T, F, $Res>;
  @override
  @useResult
  $Res call({T? data, F? filter});
}

/// @nodoc
class __$$_DataCopyWithImpl<T, F, $Res>
    extends _$DataCopyWithImpl<T, F, $Res, _$_Data<T, F>>
    implements _$$_DataCopyWith<T, F, $Res> {
  __$$_DataCopyWithImpl(
      _$_Data<T, F> _value, $Res Function(_$_Data<T, F>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$_Data<T, F>(
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
            other is _$_Data<T, F> &&
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
  _$$_DataCopyWith<T, F, _$_Data<T, F>> get copyWith =>
      __$$_DataCopyWithImpl<T, F, _$_Data<T, F>>(this, _$identity);

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
  const factory _Data({final T? data, final F? filter}) = _$_Data<T, F>;

  @override
  T? get data;
  @override
  F? get filter;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<T, F, _$_Data<T, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<T, F, $Res>
    implements $DataCopyWith<T, F, $Res> {
  factory _$$LoadingCopyWith(
          _$Loading<T, F> value, $Res Function(_$Loading<T, F>) then) =
      __$$LoadingCopyWithImpl<T, F, $Res>;
  @override
  @useResult
  $Res call({T? data, F? filter});
}

/// @nodoc
class __$$LoadingCopyWithImpl<T, F, $Res>
    extends _$DataCopyWithImpl<T, F, $Res, _$Loading<T, F>>
    implements _$$LoadingCopyWith<T, F, $Res> {
  __$$LoadingCopyWithImpl(
      _$Loading<T, F> _value, $Res Function(_$Loading<T, F>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$Loading<T, F>(
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
            other is _$Loading<T, F> &&
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
  _$$LoadingCopyWith<T, F, _$Loading<T, F>> get copyWith =>
      __$$LoadingCopyWithImpl<T, F, _$Loading<T, F>>(this, _$identity);

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
  const factory Loading({final T? data, final F? filter}) = _$Loading<T, F>;

  @override
  T? get data;
  @override
  F? get filter;
  @override
  @JsonKey(ignore: true)
  _$$LoadingCopyWith<T, F, _$Loading<T, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyCopyWith<T, F, $Res>
    implements $DataCopyWith<T, F, $Res> {
  factory _$$EmptyCopyWith(
          _$Empty<T, F> value, $Res Function(_$Empty<T, F>) then) =
      __$$EmptyCopyWithImpl<T, F, $Res>;
  @override
  @useResult
  $Res call({T? data, F? filter});
}

/// @nodoc
class __$$EmptyCopyWithImpl<T, F, $Res>
    extends _$DataCopyWithImpl<T, F, $Res, _$Empty<T, F>>
    implements _$$EmptyCopyWith<T, F, $Res> {
  __$$EmptyCopyWithImpl(
      _$Empty<T, F> _value, $Res Function(_$Empty<T, F>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$Empty<T, F>(
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
            other is _$Empty<T, F> &&
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
  _$$EmptyCopyWith<T, F, _$Empty<T, F>> get copyWith =>
      __$$EmptyCopyWithImpl<T, F, _$Empty<T, F>>(this, _$identity);

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
  const factory Empty({final T? data, final F? filter}) = _$Empty<T, F>;

  @override
  T? get data;
  @override
  F? get filter;
  @override
  @JsonKey(ignore: true)
  _$$EmptyCopyWith<T, F, _$Empty<T, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<T, F, $Res>
    implements $DataCopyWith<T, F, $Res> {
  factory _$$ErrorCopyWith(
          _$Error<T, F> value, $Res Function(_$Error<T, F>) then) =
      __$$ErrorCopyWithImpl<T, F, $Res>;
  @override
  @useResult
  $Res call({T? data, F? filter, Object? error});
}

/// @nodoc
class __$$ErrorCopyWithImpl<T, F, $Res>
    extends _$DataCopyWithImpl<T, F, $Res, _$Error<T, F>>
    implements _$$ErrorCopyWith<T, F, $Res> {
  __$$ErrorCopyWithImpl(
      _$Error<T, F> _value, $Res Function(_$Error<T, F>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
    Object? error = freezed,
  }) {
    return _then(_$Error<T, F>(
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
            other is _$Error<T, F> &&
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
  _$$ErrorCopyWith<T, F, _$Error<T, F>> get copyWith =>
      __$$ErrorCopyWithImpl<T, F, _$Error<T, F>>(this, _$identity);

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
      _$Error<T, F>;

  @override
  T? get data;
  @override
  F? get filter;
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<T, F, _$Error<T, F>> get copyWith =>
      throw _privateConstructorUsedError;
}
