import '../list_page.dart';
import 'data_repository.dart';

abstract class PaginatedRepository<T,F> extends DataRepository<ListPage <T>,F> {}
