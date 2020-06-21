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
    if(event is DataClear) {
      yield DataEmpty<T,F>(null);
    } else if(event is DataLoad) {
      final e = event as DataLoad;
      yield state.toLoading();
      yield DataLoaded(
        await repository.load(e.filter), filter: e.filter);
    }
    throw UnimplementedError();
  }

  void clear() => add(DataClear());
  void load(F filter) => add(DataLoad(filter: filter));
}
