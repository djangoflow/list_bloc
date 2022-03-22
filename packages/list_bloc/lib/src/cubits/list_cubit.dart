import 'package:list_bloc/list_bloc.dart';

class ListCubit<T, F> extends DataCubit<List<T>, F> {
  final bool continuous;

  ListCubit(Future<List<T>> Function([F?]) loader, [Data<List<T>, F>? state])
      : continuous = false,
        super(loader, state);

  ListCubit.continuous(Future<List<T>> Function([F?]) loader,
      [Data<List<T>, F>? state])
      : continuous = true,
        super(loader, state);

  Future<void> reload([F? filter]) => super.load(filter);

  @override
  Future<void> load([F? filter]) async {
    if (continuous) {
      emit(Data.loading(data: state.data, filter: state.filter));
      try {
        emit(Data(data: [
          ...state.data ?? [],
          ...await loader(filter ?? state.filter)
        ], filter: filter ?? state.filter));
      } catch (e) {
        emit(Data.error(data: state.data, filter: state.filter, error: e));
      }
    } else {
      return await reload(filter);
    }
  }
}
