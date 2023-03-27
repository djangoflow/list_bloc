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
    final data = <T>[...state.data ?? [], item];
    emit(state.copyWith(data: data));
  }

  void remove(T item) {
    final data = <T>[...state.data ?? []]..remove(item);
    if (data.isEmpty) {
      emit(Data.empty(filter: state.filter,),);
    } else {
      emit(state.copyWith(data: data));
    }
  }

  void replace({
    required T oldItem,
    required T newItem,
  }) {
    final data = <T>[...state.data ?? []];

    final index = data.indexOf(oldItem);
    if (index != -1) {
      data.removeAt(index);
      data.insert(index, newItem);
      emit(state.copyWith(data: data));
    }
  }
}
