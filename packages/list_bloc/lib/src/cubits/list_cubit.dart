import 'package:list_bloc/list_bloc.dart';

class ListCubit<T, F> extends DataCubit<List<T>, F> {
  ListCubit(Future<List<T>> Function([F?]) loader, [Data<List<T>, F>? state])
      : super(loader, state);
}
