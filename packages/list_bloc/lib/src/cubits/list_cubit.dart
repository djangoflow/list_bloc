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

  void add(T item) {
    final data = state.data;
    emit(
      Data.loading(
        data: data,
        filter: state.filter,
      ),
    );

    final newData = <T>[...data ?? [], item];
    emit(
      Data(
        data: newData,
        filter: state.filter,
      ),
    );
  }

  void remove(T item) {
    final data = state.data;
    emit(
      Data.loading(
        data: data,
        filter: state.filter,
      ),
    );

    final newData = <T>[...data ?? []]..remove(item);
    if (newData.isEmpty) {
      emit(
        Data.empty(
          filter: state.filter,
        ),
      );
    } else {
      emit(state.copyWith(data: newData));
    }
  }

  void replace({
    required T oldItem,
    required T newItem,
  }) {
    emit(
      Data.loading(
        data: state.data,
        filter: state.filter,
      ),
    );

    final data = <T>[...state.data ?? []];
    final index = data.indexOf(oldItem);
    if (index != -1) {
      data.removeAt(index);
      data.insert(index, newItem);
      emit(
        Data(
          data: data,
          filter: state.filter,
        ),
      );
    }
  }
}
