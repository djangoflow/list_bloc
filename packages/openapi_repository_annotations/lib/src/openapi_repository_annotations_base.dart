/// Annotation class for generating Repository, DataBlocs, ListBlocs
class OpenapiRepository {
  /// The name of class for which the repository will be generated.
  final Type buildFor;

  /// List of `RepositoryBuilder` to allow/ignore certain methods
  final List<RepositoryBuilder> builderList;

  /// connection connect timeout in milliseconds
  final int connectTimeout;

  /// connection receive timeout in milliseconds
  final int receiveTimeout;

  /// connection send timeout in milliseconds
  final int sendTimeout;

  /// default offset value for paginated blocs
  final int defaultOffset;

  /// default page size value for paginated blocs
  final int defaultPageSize;

  /// custom dio interceptor
  final Type? dioInterceptor;

  /// live/production base path(url) which will override `baseUrl` in release mode
  final String? liveBasePath;

  /// base url
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

class RepositoryBuilder {
  /// Which class to look methods inside of.
  final Type apiClass;

  /// Allowed endpoints(methods) that can be used to generate code. A value of '*' means all,
  /// or provide a list of method names that will be allowed only.
  final List<String> allowedEndpoints;

  /// Ignored endpoints(methods) that can be used to ignore certain methods from generating code. A value of '*' means all,
  /// or provide a list of method names that will be ignored.
  final List<String> ignoreEndpoints;

  const RepositoryBuilder(
    this.apiClass, {
    this.allowedEndpoints = const ['*'],
    this.ignoreEndpoints = const [],
  });
}
