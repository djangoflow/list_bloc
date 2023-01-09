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

  Future<void> remove(int index, [F? filter]) async {
    final f = filter ?? state.filter;
    try {
      final data = [...state.data ?? []];
      if (data.isEmpty) {
        emit(Data.empty(filter: f));
      } else {
        data.removeAt(index);
        emit(
          data.isEmpty ? Data.empty(filter: f) : Data(data: data, filter: f),
        );
      }
    } on Exception catch (e) {
      emit(Data.error(data: state.data, filter: state.filter, error: e));
      rethrow;
    }
  }

  Future<void> insert(int index, T item, [F? filter]) async {
    final f = filter ?? state.filter;

    emit(Data.loading(data: state.data, filter: f));
    try {
      final data = [...state.data ?? []];
      data.insert(index, item);
      emit(
        data.isEmpty ? Data.empty(filter: f) : Data(data: data, filter: f),
      );
    } on Exception catch (e) {
      emit(Data.error(data: state.data, filter: state.filter, error: e));
      rethrow;
    }
  }

  Future<void> replace(int index, T updatedItem, [F? filter]) async {
    final f = filter ?? state.filter;

    emit(Data.loading(data: state.data, filter: f));
    try {
      final data = [...state.data ?? []];
      if (data.isEmpty) {
        emit(Data.empty(filter: f));
      } else {
        data[index] = updatedItem;
        emit(Data(data: data, filter: f));
      }
    } on Exception catch (e) {
      emit(Data.error(data: state.data, filter: state.filter, error: e));
      rethrow;
    }
  }
}
