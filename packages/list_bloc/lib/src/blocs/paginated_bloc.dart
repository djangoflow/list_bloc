import '../repositories/paginated_repository.dart';
import 'data_bloc.dart';
import '../page.dart';

class PaginatedBloc<T,F> extends DataBloc<Page<T>, F> {
  @override
  DataState<Page<T>,F> get initialState => DataEmpty<Page <T>,F>(Page<T>());

  @override
  final PaginatedRepository<Page<T>,F> repository;

  PaginatedBloc(this.repository) : super(repository);

  @override
  Stream<DataState<Page<T>, F>> mapEventToState(DataEvent<Page<T>, F> event) async* {

    super.mapEventToState(event);
  }
}
