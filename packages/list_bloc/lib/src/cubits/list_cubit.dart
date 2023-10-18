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

  void addLocally(T item) {
    final data = state.data ?? [];
    final updatedList = [item, ...data];
    _emitUpdatedData(updatedList);
  }

  void removeLocally(T item) {
    final data = state.data ?? [];
    final index = data.indexOf(item);

    if (index != -1) {
      final updatedList = [...data];
      updatedList.removeAt(index);
      _emitUpdatedData(updatedList);
    }
  }

  void replaceLocally(
    bool Function(T oldItem) indexWhere,
    T item,
  ) {
    final data = [...(state.data ?? <T>[])];
    final index = data.indexWhere(indexWhere);

    if (index != -1) {
      data[index] = item;
      _emitUpdatedData(data);
    }
  }

  void _emitUpdatedData(List<T> updatedList) {
    if (updatedList.isEmpty) {
      emit(Empty(filter: state.filter, data: updatedList));
    } else if (state is Empty) {
      emit(Data(data: updatedList, filter: state.filter));
    } else {
      emit(state.copyWith(data: updatedList));
    }
  }
}
