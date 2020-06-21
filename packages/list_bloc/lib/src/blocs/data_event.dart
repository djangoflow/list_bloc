part of 'data_bloc.dart';

abstract class DataEvent<T,F> extends Equatable {
  @override
  List<Object> get props => [];
}

class DataLoad<T,F> extends DataEvent<T,F> {
  final F filter;
  DataLoad({this.filter});

  @override
  List<Object> get props => [filter];
}

class DataClear<T,F> extends DataEvent<T,F> {}
