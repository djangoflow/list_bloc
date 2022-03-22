import '../data.dart';
import '../list_page.dart';
import 'data_cubit.dart';

class PaginatedCubit<T, F> extends DataCubit<ListPage<T>, F> {
  PaginatedCubit(Future<ListPage<T>> Function([F? filter]) loader,
      [Data<ListPage<T>, F>? state])
      : super(loader, state);
}
