// ignore_for_file: depend_on_referenced_packages

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:recase/recase.dart';

import 'package:openapi_repository_annotations/openapi_repository_annotations.dart';
import 'package:source_gen/source_gen.dart';

import 'model_visitor.dart';

class OpenapiRepositoryGenerator
    extends GeneratorForAnnotation<OpenapiRepository> {
  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    final classVisitor = ClassPropertiesVisitor();
    element.visitChildren(classVisitor);
    if (classVisitor.listMethods.isEmpty) return '';

    final ignoredParams = annotation
        .read('ignoreParams')
        .listValue
        .map((e) => e.toStringValue())
        .toList();

    final buffer = StringBuffer();

    for (var element in classVisitor.listMethods.entries) {
      buffer.writeln('/// ${element.key.name.sentenceCase.toUpperCase()}');
      for (var model in element.value) {
        final methodName = model.methodElement.displayName;

        final split = methodName.titleCase.split(' ');
        final apiClass = split.isEmpty ? null : split.first.toLowerCase();

        final repositoryName = '${methodName.pascalCase}Repository';
        final filterName = '${methodName.pascalCase}Filter';
        final type = model.returnType.getDisplayString(withNullability: false);

        final methodParameters = model.methodElement.parameters
            .where((parameter) => !ignoredParams.contains(parameter.name))
            .toList();

        final optionalParams = methodParameters.where((element) {
          return element.isOptional;
        }).toList();

        if (apiClass == null) continue;
        buffer
          ..writeln()
          ..writeln(_buildTypeDefs(
            type: type,
            filterName: filterName,
            name: methodName.pascalCase,
            hasFilter: methodParameters.isNotEmpty,
          ))
          ..writeln();
        if (optionalParams.isNotEmpty) {
          buffer
            ..writeln(_buildFilterClass(
              filterName: filterName,
              method: model.methodElement,
              parameters: optionalParams,
            ))
            ..writeln();
        }
        buffer.writeln(_buildListLoader(
          type: type,
          repositoryName: repositoryName,
          filterName: filterName,
          filterParameters: methodParameters,
          hasFilter: methodParameters.isNotEmpty,
          apiClass: apiClass,
          methodName: methodName,
          isInline: model.isInline,
        ));
      }
      buffer.writeln();
    }

    return buffer.toString();
  }

  /// Returns the ListRepository class for [apiClass]. Use [isInline] to handle
  /// InlineResponse types or Paginated responses.
  String _buildListLoader({
    required String type,
    required String repositoryName,
    required String apiClass,
    required String methodName,
    required String filterName,
    required bool hasFilter,
    required List<ParameterElement> filterParameters,
    bool isInline = false,
  }) {
    final api = 'APIRepository.instance';
    final data = 'r.data?${isInline ? '.results' : ''}';
    final buffer = StringBuffer()
      ..writeln('/// List bloc repository for ${methodName.sentenceCase}')
      ..writeln('abstract class $repositoryName {')
      ..writeln('  static Future<List<$type>> loader(');

    for (final parameter
        in filterParameters.where((element) => !element.isOptional)) {
      buffer.writeln('    ${parameter.type} ${parameter.name},');
    }

    buffer.writeln(
      '[${hasFilter ? '$filterName? filter' : 'Object? _'},]) async {',
    );
    buffer.write('    final r = await $api.$apiClass.$methodName(');
    if (hasFilter && filterParameters.isNotEmpty) {
      buffer.writeln();
      for (var e in filterParameters) {
        buffer.writeln(
          '      ${e.name}: ${e.isOptional ? 'filter?.' : ''}${e.name},',
        );
      }
    }
    buffer
      ..writeln('    );')
      ..writeln()
      ..writeln('    return $data.asList() ?? [];')
      ..writeln('  }')
      ..writeln('}');

    return buffer.toString();
  }

  String _buildTypeDefs({
    required String name,
    required String filterName,
    required String type,
    required bool hasFilter,
  }) {
    final buffer = StringBuffer();
    buffer
      ..writeln(
        'typedef ${name}State = Data<List<$type>, ${hasFilter ? filterName : 'Object'}>;',
      )
      ..writeln(
        'typedef ${name}Bloc = ListCubit<$type, ${hasFilter ? filterName : 'Object'}>;',
      );

    return buffer.toString();
  }

  String _buildFilterClass({
    required String filterName,
    required MethodElement method,
    required List<ParameterElement> parameters,
  }) {
    final buffer = StringBuffer();
    final isPaginated =
        parameters.any((element) => ['offset', 'limit'].contains(element.name));
    buffer
      ..writeln('@freezed')
      ..writeln(
        'class $filterName with _\$$filterName${isPaginated ? ' implements OffsetLimitFilter' : ''} {',
      )
      ..writeln(isPaginated ? '  static const kPageSize = 25;' : '')
      ..writeln('  const $filterName._();')
      ..writeln('')
      ..writeln(isPaginated ? '  @Implements<OffsetLimitFilter>()' : '')
      ..write('  const factory $filterName(')
      ..writeln('{');
    for (var parameter in parameters) {
      final requiredValue = !parameter.isOptional ? 'required ' : '';
      final isOffsetLimit = ['offset', 'limit'].contains(parameter.name);
      final defaultValue =
          isOffsetLimit && parameter.isOptional ? '@Default(0) ' : '';
      buffer.writeln(
        '    $defaultValue'
        '$requiredValue'
        '${parameter.type.getDisplayString(withNullability: !isOffsetLimit)} '
        '${parameter.name},',
      );
    }
    buffer
      ..write('\n  }')
      ..writeln(') = _$filterName;')
      ..writeln('')
      ..writeln('  factory $filterName.fromJson(Map<String, dynamic> map,) =>')
      ..writeln('      _\$${filterName}FromJson(map);')
      ..writeln();
    if (isPaginated) {
      buffer
        ..writeln('  @override')
        ..writeln(
          '  $filterName copyWithOffset(int offset) => copyWith(offset: offset);',
        );
    }
    buffer.writeln('}');
    return buffer.toString();
  }
}
