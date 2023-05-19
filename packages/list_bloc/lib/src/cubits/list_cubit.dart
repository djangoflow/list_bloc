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
// TODO(alexis): implement remove, add, replace etc

  Future<void> remove(T item) async {
    try {
      final data = <T>[...state.data ?? []];
      if (data.isNotEmpty) {
        data.remove(item);
        emit(
          Data(data: data, filter: state.filter),
        );
      } else {
        emit(Data.empty(filter: state.filter));
      }
    } catch (e) {
      emit(Data.error(data: state.data, filter: state.filter, error: e));
      rethrow;
    }
  }

  Future<void> add(T item) async {
    try {
      final data = <T>[...state.data ?? []];
      data.add(item);
      emit(Data(filter: state.filter, data: data));
    } catch (e) {
      emit(Data.error(data: state.data, filter: state.filter, error: e));
      rethrow;
    }
  }

  Future<void> replace({required T item, required T newItem}) async {
    try {
      final data = <T>[...state.data ?? []];
      if (data.isNotEmpty) {
        final index = data.indexOf(item);
        data[index] = newItem;
        emit(
          Data(data: data, filter: state.filter),
        );
      } else {
        emit(Data.empty(filter: state.filter));
      }
    } catch (e) {
      emit(Data.error(data: state.data, filter: state.filter, error: e));
      rethrow;
    }
  }
}
