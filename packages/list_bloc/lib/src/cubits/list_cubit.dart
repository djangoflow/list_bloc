import 'package:list_bloc/list_bloc.dart';

import '../data_state.dart';
import 'data_cubit.dart';

abstract class ListCubit<T, F> extends DataCubit<List<T>, F> {
  final bool growable;

  ListCubit([DataState<List<T>, F>? state])
      : growable = false,
        super(state ?? DataEmpty<List<T>, F>());

  ListCubit.growable([DataState<List<T>, F>? state])
      : growable = true,
        super(state ?? DataEmpty<List<T>, F>());

  Future<void> reload([F? filter]) => super.load(filter);

  @override
  Future<void> load([F? filter]) async {
    if (growable) {
      emit(state.toLoading());
      try {
        emit(DataLoaded<List<T>, F>(
            [...state.data ?? [], ...await fetch(
                (filter == null && state.filter != null && state.filter is OffsetLimitFilter)
                filter)]));
      } catch (e) {
        emit(DataError<List<T>, F, Object>(e, state.data));
      }
    } else {
      return await reload(filter);
    }
  }
}
