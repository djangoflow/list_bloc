import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../repositories/data_repository.dart';

part 'data_event.dart';

part 'data_state.dart';

class DataBloc<T, F> extends Bloc<DataEvent<T, F>, DataState<T, F>> {
  final DataRepository<T, F> repository;

  DataBloc(this.repository) : super(DataEmpty<T, F>());

  Future<T> perform_load(F? filter, {bool append = false}) =>
      repository.load(filter: filter);

  @override
  Stream<DataState<T, F>> mapEventToState(DataEvent<T, F> event) async* {
    print(event);
    if (event is DataClear<T, F>) {
      yield DataEmpty<T?, F>() as DataState<T, F>;
    } else if (event is DataLoad<T, F>) {
      yield state.toLoading();
      final filter = event.filter ?? state.filter;
      yield DataLoaded<T, F>(await perform_load(filter, append: event.append),
          filter: filter);
    } else {
      throw UnimplementedError();
    }
  }

  void clear() => add(DataClear<T, F>());

  void load([F? filter]) => add(DataLoad<T, F>(filter: filter));
}
