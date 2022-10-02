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

  void add(T element) {
    final data = <T>[...state.data ?? [], element];
    emit(state.copyWith(data: data));
  }

  void remove(T element) {
    final data = <T>[...state.data ?? []]..remove(element);
    emit(
      data.isEmpty
          ? Data.empty(filter: state.filter)
          : Data(data: data, filter: state.filter),
    );
  }

  void removeWhere(bool Function(T) test) {
    final data = <T>[...state.data ?? []]..removeWhere(test);
    emit(
      data.isEmpty
          ? Data.empty(filter: state.filter)
          : Data(data: data, filter: state.filter),
    );
  }

  void _replaceFromIndexWith(int? replaceableIndex, T replaceWith) {
    if (replaceableIndex != null && replaceableIndex >= 0) {
      final data = <T>[...state.data ?? []]..[replaceableIndex] = replaceWith;
      emit(Data(data: data, filter: state.filter));
    }
  }

  void replace({
    required T replaceWhat,
    required T replaceWith,
  }) {
    final replaceableIndex = state.data?.indexOf(replaceWhat);
    _replaceFromIndexWith(replaceableIndex, replaceWith);
  }

  void replaceWhere({
    required bool Function(T) replaceWhere,
    required T replaceWith,
  }) {
    final replaceableIndex = state.data?.indexWhere(replaceWhere);
    _replaceFromIndexWith(replaceableIndex, replaceWith);
  }
}
