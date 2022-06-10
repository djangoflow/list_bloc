class OpenapiRepository {
  final Type buildFor;
  final List<ListRepositoryBuilder> builderList;
  final int connectTimeout;
  final int receiveTimeout;
  final int sendTimeout;
  final int defaultOffset;
  final int defaultPageSize;
  final Type? dioInterceptor;
  final String? liveBasePath;
  final String? baseUrl;

  const OpenapiRepository({
    required this.buildFor,
    this.builderList = const [],
    this.connectTimeout = 10000,
    this.receiveTimeout = 15000,
    this.sendTimeout = 15000,
    this.defaultOffset = 0,
    this.defaultPageSize = 100,
    this.dioInterceptor,
    this.liveBasePath,
    this.baseUrl,
  });
}

class ListRepositoryBuilder {
  final Type apiClass;
  final List<String> listEndpoints;
  final List<String> ignoreEndpoints;

  const ListRepositoryBuilder(
    this.apiClass, {
    this.listEndpoints = const ['*'],
    this.ignoreEndpoints = const [],
  });
}

class DataRepositoryBuilder {
  final Type apiClass;
  final List<String> dataEndpoints;
  final List<String> ignoreEndpoints;

  const DataRepositoryBuilder(
    this.apiClass, {
    this.dataEndpoints = const ['*'],
    this.ignoreEndpoints = const [],
  });
}
