import '../list_page.dart';
import 'data_cubit.dart';

class PaginatedCubit<T, F> extends DataCubit<ListPage<T>, F> {
  PaginatedCubit(super.loader, [super.state]);
}
