import 'package:build_test/build_test.dart';
import 'package:test/test.dart';

import 'helpers.dart';
import 'test_file_sources.dart';

void main() {
  group('OpenApi Gen test', () {
    test(
      'Test with builder list',
      () async {
        return await testGenerator(
          apiRepository: TestFileSources.apiRepositoryWithBuilderList,
          generatedFile: TestFileSources.generatedFileWithBuilderList,
        );
      },
    );

    test(
      'Test without builder list',
      () async {
        return await testGenerator(
          apiRepository: TestFileSources.apiRepositoryWithoutBuilderListItem,
          generatedFile: TestFileSources.generatedFileWithEmptyBuilderList,
        );
      },
    );

    test(
      'Test with ignoreEndpoints for listItem method, should generated dataBloc only',
      () async {
        return await testGenerator(
          apiRepository:
              TestFileSources.apiRepositoryWithIngoreIgnoreListItemEndpoints,
          generatedFile:
              TestFileSources.generatedFileWithIgnoreListItemEndpoint,
        );
      },
    );
  });
}
