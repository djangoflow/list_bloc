abstract class DataRepository<T,F> {
  Future <T> load({F filter});
}
