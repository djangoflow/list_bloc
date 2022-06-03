// ignore_for_file: depend_on_referenced_packages

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:mustache_template/mustache.dart';
import 'package:openapi_repository/src/templates.dart';
import 'package:recase/recase.dart';

import 'package:openapi_repository_annotations/openapi_repository_annotations.dart';
import 'package:source_gen/source_gen.dart';

import 'model_visitor.dart';

class OpenapiRepositoryGenerator
    extends GeneratorForAnnotation<OpenapiRepository> {
  int _defaultPageSize = 100;
  int _defaultOffset = 0;

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
        .peek('ignoreParams')
        ?.listValue
        .map((e) => e.toStringValue())
        .toList();

    final defaultPageSizeValue = annotation.peek('defaultPageSize');
    final defaultOffsetValue = annotation.peek('defaultOffset');

    if (defaultPageSizeValue?.isInt ?? false) {
      _defaultPageSize = defaultPageSizeValue!.intValue;
    }
    if (defaultOffsetValue?.isInt ?? false) {
      _defaultOffset = defaultOffsetValue!.intValue;
    }

    final buffer = StringBuffer();

    for (final element in classVisitor.listMethods.entries) {
      buffer.writeln('/// ${element.key.name.sentenceCase.toUpperCase()}');
      for (final model in element.value) {
        final methodName = model.methodElement.displayName;

        final split = methodName.titleCase.split(' ');
        final apiClass = split.isEmpty ? null : split.first.toLowerCase();

        final type = model.returnType.getDisplayString(withNullability: false);

        final methodParameters = ignoredParams != null
            ? model.methodElement.parameters
                .where((parameter) => !ignoredParams.contains(parameter.name))
                .toList()
            : model.methodElement.parameters;

        final optionalParams = methodParameters.where((element) {
          return element.isOptional;
        }).toList();

        if (apiClass == null) continue;
        buffer
          ..writeln()
          ..writeln(_buildTypeDefs(
            type: type,
            name: methodName.pascalCase,
            hasFilter: methodParameters.isNotEmpty,
          ))
          ..writeln();
        if (optionalParams.isNotEmpty) {
          buffer
            ..writeln(_buildFilterClass(
              name: methodName.pascalCase,
              parameters: optionalParams,
            ))
            ..writeln();
        }
        buffer.writeln(_buildListLoader(
          type: type,
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
    required String apiClass,
    required String methodName,
    required bool hasFilter,
    required List<ParameterElement> filterParameters,
    bool isInline = false,
  }) =>
      Template(repositoryTemplate).renderString({
        'api': apiClass,
        'name': methodName.pascalCase,
        'isInline': isInline,
        'methodName': methodName,
        'returnType': type,
        'hasFilter': hasFilter,
        'additionalParams': filterParameters
            .where((element) => !element.isOptional)
            .map(
                (parameter) => {'param': '${parameter.type} ${parameter.name}'})
            .toList(),
        'filterParams': hasFilter && filterParameters.isNotEmpty
            ? filterParameters.map((e) {
                return {
                  'param':
                      '${e.name}: ${e.isOptional ? 'filter?.' : ''}${e.name}'
                };
              }).toList()
            : [],
      });

  String _buildTypeDefs({
    required String name,
    required String type,
    required bool hasFilter,
  }) =>
      Template(typedefTemplate).renderString({
        'name': name,
        'hasFilter': hasFilter,
        'type': type,
      });

  String _buildFilterClass({
    required String name,
    required List<ParameterElement> parameters,
  }) =>
      Template(freezedFilterTemplate).renderString({
        'name': name,
        'isPaginated': parameters.any(
          (element) => ['offset', 'limit'].contains(element.name),
        ),
        'types': parameters.map((parameter) {
          final requiredValue = !parameter.isOptional ? 'required ' : '';
          final isOffsetLimit = ['offset', 'limit'].contains(parameter.name);
          final defaultValue = isOffsetLimit && parameter.isOptional
              ? '@Default(${parameter.name == 'offset' ? _defaultOffset : _defaultPageSize}) '
              : '';

          final type = '    $defaultValue'
              '$requiredValue'
              '${parameter.type.getDisplayString(withNullability: !isOffsetLimit)} '
              '${parameter.name},';

          return {'type': type};
        }).toList(),
      });
}
