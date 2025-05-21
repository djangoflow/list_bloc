// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Data<T, F> {
  T? get data;
  F? get filter;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DataCopyWith<T, F, Data<T, F>> get copyWith =>
      _$DataCopyWithImpl<T, F, Data<T, F>>(this as Data<T, F>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Data<T, F> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(filter));

  @override
  String toString() {
    return 'Data<$T, $F>(data: $data, filter: $filter)';
  }
}

/// @nodoc
abstract mixin class $DataCopyWith<T, F, $Res> {
  factory $DataCopyWith(Data<T, F> value, $Res Function(Data<T, F>) _then) =
      _$DataCopyWithImpl;
  @useResult
  $Res call({T? data, F? filter});
}

/// @nodoc
class _$DataCopyWithImpl<T, F, $Res> implements $DataCopyWith<T, F, $Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data<T, F> _self;
  final $Res Function(Data<T, F>) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
  }) {
    return _then(_self.copyWith(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      filter: freezed == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
    ));
  }
}

/// @nodoc

class _Data<T, F> implements Data<T, F> {
  const _Data({this.data, this.filter});

  @override
  final T? data;
  @override
  final F? filter;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DataCopyWith<T, F, _Data<T, F>> get copyWith =>
      __$DataCopyWithImpl<T, F, _Data<T, F>>(this, _$identity);

  @override
  bool operator ==(Object other) {
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

  @override
  String toString() {
    return 'Data<$T, $F>(data: $data, filter: $filter)';
  }
}

/// @nodoc
abstract mixin class _$DataCopyWith<T, F, $Res>
    implements $DataCopyWith<T, F, $Res> {
  factory _$DataCopyWith(_Data<T, F> value, $Res Function(_Data<T, F>) _then) =
      __$DataCopyWithImpl;
  @override
  @useResult
  $Res call({T? data, F? filter});
}

/// @nodoc
class __$DataCopyWithImpl<T, F, $Res> implements _$DataCopyWith<T, F, $Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data<T, F> _self;
  final $Res Function(_Data<T, F>) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
  }) {
    return _then(_Data<T, F>(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      filter: freezed == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
    ));
  }
}

/// @nodoc

class Loading<T, F> implements Data<T, F> {
  const Loading({this.data, this.filter});

  @override
  final T? data;
  @override
  final F? filter;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadingCopyWith<T, F, Loading<T, F>> get copyWith =>
      _$LoadingCopyWithImpl<T, F, Loading<T, F>>(this, _$identity);

  @override
  bool operator ==(Object other) {
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

  @override
  String toString() {
    return 'Data<$T, $F>.loading(data: $data, filter: $filter)';
  }
}

/// @nodoc
abstract mixin class $LoadingCopyWith<T, F, $Res>
    implements $DataCopyWith<T, F, $Res> {
  factory $LoadingCopyWith(
          Loading<T, F> value, $Res Function(Loading<T, F>) _then) =
      _$LoadingCopyWithImpl;
  @override
  @useResult
  $Res call({T? data, F? filter});
}

/// @nodoc
class _$LoadingCopyWithImpl<T, F, $Res>
    implements $LoadingCopyWith<T, F, $Res> {
  _$LoadingCopyWithImpl(this._self, this._then);

  final Loading<T, F> _self;
  final $Res Function(Loading<T, F>) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
  }) {
    return _then(Loading<T, F>(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      filter: freezed == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
    ));
  }
}

/// @nodoc

class Empty<T, F> implements Data<T, F> {
  const Empty({this.data, this.filter});

  @override
  final T? data;
  @override
  final F? filter;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmptyCopyWith<T, F, Empty<T, F>> get copyWith =>
      _$EmptyCopyWithImpl<T, F, Empty<T, F>>(this, _$identity);

  @override
  bool operator ==(Object other) {
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

  @override
  String toString() {
    return 'Data<$T, $F>.empty(data: $data, filter: $filter)';
  }
}

/// @nodoc
abstract mixin class $EmptyCopyWith<T, F, $Res>
    implements $DataCopyWith<T, F, $Res> {
  factory $EmptyCopyWith(Empty<T, F> value, $Res Function(Empty<T, F>) _then) =
      _$EmptyCopyWithImpl;
  @override
  @useResult
  $Res call({T? data, F? filter});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, F, $Res> implements $EmptyCopyWith<T, F, $Res> {
  _$EmptyCopyWithImpl(this._self, this._then);

  final Empty<T, F> _self;
  final $Res Function(Empty<T, F>) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
  }) {
    return _then(Empty<T, F>(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      filter: freezed == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
    ));
  }
}

/// @nodoc

class Error<T, F> implements Data<T, F> {
  const Error({this.data, this.filter, this.error});

  @override
  final T? data;
  @override
  final F? filter;
  final Object? error;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<T, F, Error<T, F>> get copyWith =>
      _$ErrorCopyWithImpl<T, F, Error<T, F>>(this, _$identity);

  @override
  bool operator ==(Object other) {
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

  @override
  String toString() {
    return 'Data<$T, $F>.error(data: $data, filter: $filter, error: $error)';
  }
}

/// @nodoc
abstract mixin class $ErrorCopyWith<T, F, $Res>
    implements $DataCopyWith<T, F, $Res> {
  factory $ErrorCopyWith(Error<T, F> value, $Res Function(Error<T, F>) _then) =
      _$ErrorCopyWithImpl;
  @override
  @useResult
  $Res call({T? data, F? filter, Object? error});
}

/// @nodoc
class _$ErrorCopyWithImpl<T, F, $Res> implements $ErrorCopyWith<T, F, $Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error<T, F> _self;
  final $Res Function(Error<T, F>) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
    Object? filter = freezed,
    Object? error = freezed,
  }) {
    return _then(Error<T, F>(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      filter: freezed == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as F?,
      error: freezed == error ? _self.error : error,
    ));
  }
}

// dart format on
