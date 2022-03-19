import 'package:list_bloc/list_bloc.dart';

import '../data.dart';
import 'data_cubit.dart';

abstract class ListCubit<T, F> extends DataCubit<List<T>, F> {
  final bool continuous;

  ListCubit([Data<List<T>, F>? state])
      : continuous = false,
        super(state ?? Data.empty());

  ListCubit.continuous([Data<List<T>, F>? state])
      : continuous = true,
        super(state ?? Data.empty());

  Future<void> reload([F? filter]) => super.load(filter);

  @override
  Future<void> load([F? filter]) async {
    if (continuous) {
      emit(Data.loading(data: state.data, filter: state.filter));
      try {
        emit(Data(
            data: [...state.data ?? [], ...await fetch(filter ?? state.filter)],
            filter: filter ?? state.filter));
      } catch (e) {
        emit(Data.error(data: state.data, filter: state.filter, error: e));
      }
    } else {
      return await reload(filter);
    }
  }
}
