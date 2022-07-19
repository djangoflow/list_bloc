const freezedFilterTemplate = r'''
//Filter for {{name}}Filter 

@freezed
class {{name}}Filter with _${{name}}Filter{{#isPaginated}} implements OffsetLimitFilter{{/isPaginated}} {
  {{#isPaginated}}
  static const kPageSize = 25;{{/isPaginated}}
  const {{name}}Filter._();
  {{#annotations}}@{{annotation}}(){{/annotations}}
  {{#isPaginated}}@Implements<OffsetLimitFilter>(){{/isPaginated}}
  const factory {{name}}Filter({{^isTypesEmpty}}{ {{/isTypesEmpty}}
    {{#types}}
    {{#defaultValue}}{{defaultValue}}{{/defaultValue}}
    {{#isRequired}}required {{/isRequired}}
    {{#type}}{{type}}{{#isNullable}}? {{/isNullable}}{{/type}}
    {{name}},
    {{/types}}
  {{^isTypesEmpty}} }{{/isTypesEmpty}}) = _{{name}}Filter;

  factory {{name}}Filter.fromJson(
    Map<String, dynamic> map,
  ) => _${{name}}FilterFromJson(map);

  {{#isPaginated}}@override
  {{name}}Filter copyWithOffset(int offset) => copyWith(offset: offset);{{/isPaginated}}
}
''';

const typedefListCubitStateTemplate = r'''
//Typdef for {{name}}State

typedef {{name}}State = Data<List<{{type}}>, {{#hasFilter}}{{name}}Filter{{/hasFilter}}{{^hasFilter}}Object{{/hasFilter}}>;
''';

const typedefDataCubitStateTemplate = r'''
//Typdef for {{name}}State

typedef {{name}}State = Data<{{type}}, {{#hasFilter}}{{name}}Filter{{/hasFilter}}{{^hasFilter}}Object{{/hasFilter}}>;
''';

const dataCubitTemplate = r'''
// DataCubit for {{name}}

class {{name}}DataBloc extends DataCubit<{{returnType}}, {{#hasFilter}}{{name}}ReadFilter{{/hasFilter}}{{^hasFilter}}Object{{/hasFilter}}> with {{name}}Repository {
  {{name}}DataBloc(Future<{{returnType}}> Function([ {{#hasFilter}}{{name}}ReadFilter{{/hasFilter}}{{^hasFilter}}Object{{/hasFilter}}? filter,]) loader,) : super({{name}}Repository.read);

  {{#crudMethods}}
  @override
    Future<{{returnType}}> {{operation}}({{^isEmptyArgs}}{ {{/isEmptyArgs}}
    {{#arguments}}{{#isRequiredArg}}required {{/isRequiredArg}} {{argType}}{{#isNullableArg}}?{{/isNullableArg}} {{argName}},
    {{/arguments}} {{^isEmptyArgs}} }{{/isEmptyArgs}}
  ) async {
      final r = await super.{{operation}}({{#parameters}}{{param}},
      {{/parameters}});
      {{#shouldDataBlocReload}}await super.load(state.filter); {{/shouldDataBlocReload}}

      return r;
  }
  {{/crudMethods}}

}
''';

const listCubitTemplate = r'''
// ListCubit for {{name}}

class {{name}}ListBloc extends ListCubit<{{returnType}}, {{#hasFilter}}{{name}}ListFilter{{/hasFilter}}{{^hasFilter}}Object{{/hasFilter}}> with {{name}}Repository {
  {{name}}ListBloc(Future<List<{{returnType}}>> Function([ {{#hasFilter}}{{name}}ListFilter{{/hasFilter}}{{^hasFilter}}Object{{/hasFilter}}? filter,]) loader,) : super({{name}}Repository.list);

  {{#crudMethods}}
  @override
    Future<{{returnType}}> {{operation}}({{^isEmptyArgs}}{ {{/isEmptyArgs}}
    {{#arguments}}{{#isRequiredArg}}required {{/isRequiredArg}} {{argType}}{{#isNullableArg}}?{{/isNullableArg}} {{argName}},
    {{/arguments}} {{^isEmptyArgs}} }{{/isEmptyArgs}}
  ) async {
      final r = await super.{{operation}}({{#parameters}}{{param}},
      {{/parameters}});
      await super.reload();
      
      return r;
  }
  {{/crudMethods}}

}
''';

const repositoryTemplate = r'''
// Repository for {{repositoryName}}Repository

abstract class {{repositoryName}}Repository {
  {{#hasDataLoader}}
  {{#dataLoader}}
static Future<{{returnType}}> read({{#additionalParams}}{{param}},{{/additionalParams}}[{{#hasFilter}}{{repositoryName}}ReadFilter? filter{{/hasFilter}}{{^hasFilter}}Object? _{{/hasFilter}},])  async {
    {{#hasRequiredParam}}if (filter == null) {
      throw Exception('Invalid filter');
    }{{/hasRequiredParam}}
    final r = await ApiRepository.instance.{{api}}.{{methodName}}(
      {{#filterParams}}{{param}},{{/filterParams}}
    );
    if(r.data == null) {
      throw Exception('Failed to load data!');
    }else{
      return r.data!;
    }
    
  }
  {{/dataLoader}}
  {{/hasDataLoader}}
  
  {{#hasListLoader}}
  {{#listLoader}}
static Future<List<{{returnType}}>> list({{#additionalParams}}{{param}},{{/additionalParams}}[{{#hasFilter}}{{repositoryName}}ListFilter? filter{{/hasFilter}}{{^hasFilter}}Object? _{{/hasFilter}},])  async {
    {{#hasRequiredParam}}if (filter == null) {
      throw Exception('Invalid filter');
    }{{/hasRequiredParam}}
    final r = await ApiRepository.instance.{{api}}.{{methodName}}(
      {{#filterParams}}{{param}},{{/filterParams}}
    );

    return r.data?{{#isInline}}.results{{/isInline}}.asList() ?? [];
  }
  {{/listLoader}}
{{/hasListLoader}}
  {{#crudMethods}}Future<{{returnType}}> {{operation}}({{^isEmptyArgs}}{ {{/isEmptyArgs}}
    {{#arguments}}{{#isRequiredArg}}required {{/isRequiredArg}} {{argType}}{{#isNullableArg}}?{{/isNullableArg}} {{argName}},
    {{/arguments}} {{^isEmptyArgs}} }{{/isEmptyArgs}}
  ) async {
    final r = (await ApiRepository.instance.{{api}}.{{name}}(
      {{#parameters}}{{param}},
      {{/parameters}}
    ));

    return r.data{{#isList}}?.asList() ?? []{{/isList}};
  }
  {{/crudMethods}}
}
''';

const apiRepositoryTemplate = r'''
class {{repositoryName}} {
  static {{repositoryName}} get instance => _instance;
  static final {{repositoryName}} _instance = {{repositoryName}}._internal();

  {{repositoryName}}._internal() {
    _openapi.dio.options
      ..baseUrl = {{{baseUrl}}}
      ..connectTimeout = {{connectTimeout}}
      ..receiveTimeout = {{receiveTimeout}}
      ..sendTimeout = {{sendTimeout}};
    {{#dioInterceptor}}_openapi.dio.interceptors.add({{dioInterceptor}}());{{/dioInterceptor}}
  }

  static const String liveBasePath = {{{liveBasePath}}};

  static final Openapi _openapi = Openapi(
    basePathOverride: kReleaseMode ? liveBasePath : null,
    interceptors: [],
  );

  Openapi get api => _openapi;
  {{#accessors}}
  {{type}} get {{name}} => api.{{methodName}}();
  {{/accessors}}
}
''';

const builtListConverterTemplate = r'''
class {{converterName}} implements JsonConverter<BuiltList<{{innerReturnType}}>, List<{{innerReturnType}}>> {
  const {{converterName}}();

  @override
  BuiltList<{{innerReturnType}}> fromJson(List<{{innerReturnType}}> json) {
    return BuiltList<{{innerReturnType}}>(json);
  }

  @override
  List<{{innerReturnType}}> toJson(BuiltList<{{innerReturnType}}> object) {
    return object.toList();
  }
}
''';
