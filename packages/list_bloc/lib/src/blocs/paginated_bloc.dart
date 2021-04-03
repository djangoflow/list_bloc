import '../page.dart';
import '../repositories/paginated_repository.dart';
import 'data_bloc.dart';

class PaginatedBloc<T, F> extends DataBloc<ListPage<T>, F> {
  @override
  final PaginatedRepository<T, F> repository;

  @override
  Future<ListPage<T>> perform_load(F? filter, {bool append = false}) async {
    final result = await super.perform_load(filter, append: false);

    return append
        ? result.withData(
            data: (state.data?.data ?? <T>[]) + (result.data ?? []),
            count: result.count)
        : result;
  }

  @override
  void load([F? filter]) {
    assert(filter != null || state.filter != null);
    super.load(filter);
  }

  void loadMore([F? filter]) {
    add(DataLoad<ListPage<T>, F>(filter: filter, append: true));
  }

  PaginatedBloc(this.repository) : super(repository);
}
