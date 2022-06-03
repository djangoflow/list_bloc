const freezedFilterTemplate = r'''
@freezed
class {{name}}Filter with _${{name}}Filter{{#isPaginated}} implements OffsetLimitFilter{{/isPaginated}} {
  {{#isPaginated}}
  static const kPageSize = 25;{{/isPaginated}}
  const {{name}}Filter._();

  {{#isPaginated}}@Implements<OffsetLimitFilter>(){{/isPaginated}}
  const factory {{name}}Filter({
    {{#types}}{{type}}{{/types}}
  }) = _{{name}}Filter;

  factory {{name}}Filter.fromJson(
    Map<String, dynamic> map,
  ) => _${{name}}FilterFromJson(map);

  {{#isPaginated}}@override
  {{name}}Filter copyWithOffset(int offset) => copyWith(offset: offset);{{/isPaginated}}
}
''';

const typedefTemplate = r'''
typedef {{name}}State = Data<List<{{type}}>, {{#hasFilter}}{{name}}Filter{{/hasFilter}}{{^hasFilter}}Object{{/hasFilter}}>;
typedef {{name}}Bloc = ListCubit<{{type}}, {{#hasFilter}}{{name}}Filter{{/hasFilter}}{{^hasFilter}}Object{{/hasFilter}}>;
''';

const repositoryTemplate = r'''
/// List bloc repository for {{name}}
abstract class {{name}}Repository {
  static Future<List<{{returnType}}>> loader({{#additionalParams}}{{param}},{{/additionalParams}}[{{#hasFilter}}{{name}}Filter? filter{{/hasFilter}}{{^hasFilter}}Object? _{{/hasFilter}},]) async {
    final r = await APIRepository.instance.{{api}}.{{methodName}}(
      {{#filterParams}}{{param}},{{/filterParams}}
    );

    return r.data?{{#isInline}}.results{{/isInline}}.asList() ?? [];
  }
}
''';
