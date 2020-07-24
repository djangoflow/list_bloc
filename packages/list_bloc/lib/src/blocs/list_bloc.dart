import '../repositories/list_repository.dart';
import 'data_bloc.dart';

class ListBloc<T,F> extends DataBloc<List<T>, F>
{
  @override
  final ListRepository<T,F> repository;

  ListBloc(this.repository) : super(repository);
}
