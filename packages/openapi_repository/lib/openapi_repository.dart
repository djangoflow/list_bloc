import 'package:build/build.dart';
import 'src/list_repository_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder generateListRepositoryBuilder(BuilderOptions options) =>
    PartBuilder([OpenapiRepositoryGenerator()], '.openapi.dart',
        header: '''
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: sort_constructors_first, sort_unnamed_constructors_first
''');
