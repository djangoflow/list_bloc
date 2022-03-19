import '../page.dart';
import 'data_cubit.dart';

abstract class PaginatedCubit<T, F> extends DataCubit<ListPage<T>, F> {}
