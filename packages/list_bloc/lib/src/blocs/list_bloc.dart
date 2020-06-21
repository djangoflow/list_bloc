import '../repositories/list_repository.dart';
import 'data_bloc.dart';

class ListBloc<T,F> extends DataBloc<List<T>, F>
{
  @override
  DataState<List<T>,F> get initialState => DataEmpty<List <T>,F>(const []);

  @override
  final ListRepository<T,F> repository;

  ListBloc(this.repository) : super(repository);
}
