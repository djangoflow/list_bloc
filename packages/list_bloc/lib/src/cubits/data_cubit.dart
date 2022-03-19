import 'package:bloc/bloc.dart';

import '../data.dart';

abstract class DataCubit<T, F> extends Cubit<Data<T, F>> {
  DataCubit([Data<T, F>? state]) : super(state ?? Data.empty());

  /// You need to implement this in a subclass
  Future<T> fetch(F? filter);

  void clear() => emit(Data.empty());

  Future<void> load([F? filter]) async {
    emit(Data.loading(data: state.data, filter: state.filter));
    try {
      emit(Data(data: await fetch(filter), filter: state.filter));
    } catch (e) {
      emit(Data.error(data: state.data, filter: state.filter, error: e));
    }
  }
}
