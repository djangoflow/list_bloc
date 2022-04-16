import 'package:bloc/bloc.dart';

import '../data.dart';

class DataCubit<T, F> extends Cubit<Data<T, F>> {
  final Future<T> Function([F? filter]) loader;

  DataCubit(this.loader, [Data<T, F>? state]) : super(state ?? Data.empty());

  void clear() => emit(Data.empty());

  void update(T data) => emit(Data(data: data, filter: state.filter));

  Future<void> load([F? filter]) async {
    final f = filter ?? state.filter;

    emit(Data.loading(data: state.data, filter: f));

    try {
      final data = await loader(f);
      if (data == null || (data is Iterable && data.isEmpty)) {
        emit(Empty(filter: f));
      } else {
        emit(Data(data: data, filter: f));
      }
    } catch (e) {
      emit(Data.error(data: state.data, filter: f, error: e));
      rethrow;
    }
  }
}
