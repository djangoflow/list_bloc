part of 'data_bloc.dart';

abstract class DataState<T, F> extends Equatable {
  final T data;
  final F? filter;

  DataState(this.data, {this.filter});

  @override
  List<Object?> get props => [data, filter];

  DataState<T,F> toLoading() => DataLoading<T,F>(data, filter: filter);

  @override
  String toString() => '$runtimeType: $data, filter: $filter';
}


class DataEmpty<T,F> extends DataState<T,F> {
  DataEmpty(T data, {F? filter}) : super(data, filter: filter);
}

class DataLoading<T,F> extends DataState<T,F> {
  DataLoading(T data, {F? filter}) : super(data, filter: filter);
}

class DataLoaded<T,F> extends DataState<T,F> {
  DataLoaded(T data, {F? filter}) : super(data, filter: filter);
}

class DataError<T,F,E> extends DataState<T,F> {
  final E error;
  DataError(this.error, T data, {F? filter}) : super(data, filter: filter);

  @override
  List<Object?> get props => [super.props, error];

  @override
  String toString() => '${super.toString()}: $error';
}
