import 'package:build/build.dart';
import 'package:build_test/build_test.dart';
import 'package:openapi_repository/openapi_repository.dart';

Future testGenerator({
  required String generatedFile,
  required String apiRepository,
}) async {
  final builder = generateListRepositoryBuilder(BuilderOptions({}));

  return await testBuilder(
    builder,
    {
      'a|lib/api_repository.dart': apiRepository,
    },
    outputs: {
      'a|lib/api_repository.openapi.dart': generatedFile,
    },
    onLog: print,
    reader: await PackageAssetReader.currentIsolate(),
  );
}
