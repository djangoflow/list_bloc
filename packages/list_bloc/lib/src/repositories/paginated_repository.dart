import '../page.dart';
import 'data_repository.dart';

abstract class PaginatedRepository<T,F> extends DataRepository<T,F> {
  Future <Page<T>> loadPage(Page<T> page, F filter);
}
