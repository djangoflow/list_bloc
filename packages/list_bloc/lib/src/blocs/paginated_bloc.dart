import '../page.dart';
import '../repositories/paginated_repository.dart';
import 'data_bloc.dart';

class PaginatedBloc<T,F> extends DataBloc<ListPage<T>, F> {
  @override
  final PaginatedRepository<T,F> repository;

  @override
  void load([F? filter]) {
    assert(filter != null || state.filter != null);
    super.load(filter);
  }

  PaginatedBloc(this.repository) : super(repository);
}
