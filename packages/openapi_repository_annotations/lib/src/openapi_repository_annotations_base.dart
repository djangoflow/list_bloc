class OpenapiRepository {
  final List<String> ignoreParams;
  final int defaultPageSize;
  final int defaultOffset;

  const OpenapiRepository({
    this.ignoreParams = const [],
    this.defaultPageSize = 100,
    this.defaultOffset = 0,
  });
}

const openApiRepository = OpenapiRepository();
