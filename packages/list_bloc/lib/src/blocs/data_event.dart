part of 'data_bloc.dart';

abstract class DataEvent<T, F> extends Equatable {
  @override
  List<Object?> get props => [];
}

class DataLoad<T, F> extends DataEvent<T, F> {
  final F? filter;
  final bool append;

  DataLoad({this.filter, this.append = false});

  @override
  List<Object?> get props => [filter];
}

class DataClear<T, F> extends DataEvent<T, F> {}
