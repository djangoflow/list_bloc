import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../repositories/data_repository.dart';

part 'data_event.dart';
part 'data_state.dart';

class DataBloc<T,F> extends Bloc<DataEvent<T,F>,DataState<T,F>> {
  @override
  DataState<T,F> get initialState => DataEmpty<T,F>(null);

  final DataRepository<T,F> repository;

  DataBloc(this.repository);

  @override
  Stream<DataState<T,F>> mapEventToState(DataEvent<T,F> event) async* {
    print(event);
    if(event is DataClear<T,F>) {
      yield DataEmpty<T,F>(null);
    } else if(event is DataLoad<T,F>) {
      yield state.toLoading();
      final filter = event.filter ?? state.filter;
      yield DataLoaded<T,F>(await repository.load(filter: filter), filter: filter);
    } else {
      throw UnimplementedError();
    }
  }

  void clear() => add(DataClear<T,F>());
  void load([F filter]) => add(DataLoad<T,F>(filter: filter));
}
