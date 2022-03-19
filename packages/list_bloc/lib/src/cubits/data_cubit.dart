import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../data_state.dart';

abstract class DataCubit<T, F> extends Cubit<DataState<T, F>> {
  DataCubit([DataState<T, F>? state]) : super(state ?? DataEmpty<T, F>());

  /// You need to implement this in a subclass
  Future<T> fetch(F? filter);

  void clear() => emit(DataEmpty<T, F>());

  Future<void> load([F? filter]) async {
    emit(state.toLoading());
    try {
      emit(DataLoaded<T, F>(await fetch(filter)));
    } catch (e) {
      emit(DataError<T, F, Object>(e, state.data));
    }
  }
}
