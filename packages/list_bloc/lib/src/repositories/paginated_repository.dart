import '../page.dart';
import 'data_repository.dart';

abstract class PaginatedRepository<T,F> extends DataRepository<Page <T>,F> {}
