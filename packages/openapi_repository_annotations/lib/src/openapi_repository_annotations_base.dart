class OpenapiRepository {
  final Type buildFor;
  final List<ListBuilder> builderList;
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

class ListBuilder {
  final Type apiClass;
  final List<String> ignoreMethods;

  const ListBuilder(this.apiClass, [this.ignoreMethods = const []]);
}
