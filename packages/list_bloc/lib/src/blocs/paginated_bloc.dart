import '../repositories/paginated_repository.dart';
import 'data_bloc.dart';
import '../page.dart';

class PaginatedBloc<T,F> extends DataBloc<ListPage<T>, F> {
  @override
  DataState<ListPage<T>,F> get initialState => DataEmpty<ListPage <T>,F>(ListPage<T>());

  @override
  final PaginatedRepository<T,F> repository;

  PaginatedBloc(this.repository) : super(repository);

  @override
  Stream<DataState<ListPage<T>, F>> mapEventToState(DataEvent<ListPage<T>, F> event) async* {
    super.mapEventToState(event);
  }
}
