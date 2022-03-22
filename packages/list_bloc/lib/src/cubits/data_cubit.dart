import 'package:bloc/bloc.dart';

import '../data.dart';

class DataCubit<T, F> extends Cubit<Data<T, F>> {
  final Future <T> Function([F? filter]) loader;

  DataCubit(this.loader, [Data<T, F>? state]) : super(state ?? Data.empty());

  void clear() => emit(Data.empty());

  Future<void> load([F? filter]) async {
    emit(Data.loading(data: state.data, filter: state.filter));
    try {
      emit(Data(data: await loader(filter), filter: state.filter));
    } catch (e) {
      emit(Data.error(data: state.data, filter: state.filter, error: e));
    }
  }
}
