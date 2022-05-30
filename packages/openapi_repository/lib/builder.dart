import 'package:build/build.dart';
import 'src/list_repository_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder generateListRepository(BuilderOptions options) => PartBuilder(
      [OpenapiRepositoryGenerator()],
      '.query.dart',
    );
