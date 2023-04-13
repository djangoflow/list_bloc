import 'package:list_bloc/list_bloc.dart';

class ListCubit<T, F> extends DataCubit<List<T>, F> {
  ListCubit(Future<List<T>> Function([F?]) loader, [Data<List<T>, F>? state]) : super(loader, state);

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

  void add(T item) {
    try {
      final newData = <T>[...state.data ?? [], item];
      emit(Data(data: newData, filter: state.filter));
    } catch (e) {
      emit(Data.error(data: state.data, filter: state.filter, error: e));
      rethrow;
    }
  }

  void removeAt(int index) {
    try {
      final newData = List<T>.from(state.data ?? [])..removeAt(index);
      emit(newData.isEmpty ? Data.empty(filter: state.filter) : Data(data: newData, filter: state.filter));
    } catch (e) {
      emit(Data.error(data: state.data, filter: state.filter, error: e));
      rethrow;
    }
  }

  void remove(T item) {
    try {
      final newData = List<T>.from(state.data ?? [])..remove(item);
      emit(newData.isEmpty ? Data.empty(filter: state.filter) : Data(data: newData, filter: state.filter));
    } catch (e) {
      emit(Data.error(data: state.data, filter: state.filter, error: e));
      rethrow;
    }
  }

  void replaceAt(int index, T newItem) {
    try {
      final newData = List<T>.from(state.data ?? [])..[index] = newItem;
      emit(Data(data: newData, filter: state.filter));
    } catch (e) {
      emit(Data.error(data: state.data, filter: state.filter, error: e));
      rethrow;
    }
  }

  void replace(T oldItem, T newItem) {
    try {
      final newData = List<T>.from(state.data ?? []);
      int index = newData.indexOf(oldItem);
      if (index != -1) {
        newData[index] = newItem;
      }
      emit(Data(data: newData, filter: state.filter));
    } catch (e) {
      emit(Data.error(data: state.data, filter: state.filter, error: e));
      rethrow;
    }
  }
}
