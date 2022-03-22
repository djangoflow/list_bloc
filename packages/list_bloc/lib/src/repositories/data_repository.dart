abstract class DataRepository<T,F> {
  Future <T> loader([F? filter]);
}
