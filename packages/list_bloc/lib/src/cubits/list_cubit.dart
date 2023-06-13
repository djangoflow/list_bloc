import 'package:list_bloc/list_bloc.dart';

class ListCubit<T, F> extends DataCubit<List<T>, F> {
  ListCubit(Future<List<T>> Function([F?]) loader, [Data<List<T>, F>? state])
      : super(loader, state);

  Future<void> reload([F? filter]) => super.load(filter);

  Future<void> append([F? filter]) async {
    final f = filter ?? state.filter;

    emit(Data.loading(data: state.data, filter: f));
    try {
      final data = <T>[...state.data ?? [], ...await loader(f)];
      emit(
        data.isEmpty ? Data.empty(filter: f) : Data(data: data, filter: f),
      );
    } catch (e) {
      emit(Data.error(data: state.data, filter: state.filter, error: e));
      rethrow;
    }
  }

  Future<void> remove(T item) async {
    emit(Data.loading(data: state.data, filter: state.filter));
    try {
      final data = state.data;
      if (data == null) return;

      final updatedData = List<T>.from(data)..remove(item);

      if (updatedData.isEmpty) {
        emit(Data.empty(filter: state.filter));
      } else {
        emit(Data(data: updatedData, filter: state.filter));
      }
    } catch (e) {
      emit(Data.error(data: state.data, filter: state.filter, error: e));
      rethrow;
    }
  }

  Future<void> add(T item) async {
    emit(Data.loading(data: state.data, filter: state.filter));
    try {
      final data = state.data;
      if (data == null) return;

      final updatedData = List<T>.from(data)..add(item);

      emit(Data(data: updatedData, filter: state.filter));
    } catch (e) {
      emit(Data.error(data: state.data, filter: state.filter, error: e));
      rethrow;
    }
  }

  Future<void> replace(T oldItem, T newItem) async {
    emit(Data.loading(data: state.data, filter: state.filter));
    try {
      final data = state.data;
      if (data == null) return;

      final index = data.indexOf(oldItem);
      if (index == -1) return;

      final updatedData = List<T>.from(data)
        ..replaceRange(index, index + 1, [newItem]);

      emit(Data(data: updatedData, filter: state.filter));
    } catch (e) {
      emit(Data.error(data: state.data, filter: state.filter, error: e));
      rethrow;
    }
  }
}
