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

class {{name}}DataBloc extends DataCubit<{{returnType}}, {{#hasFilter}}{{name}}{{filterSuffix}}Filter{{/hasFilter}}{{^hasFilter}}Object{{/hasFilter}}> with {{name}}RepositoryMixin {{#hasBlocMixins}}, {{blocMixins}} {{/hasBlocMixins}}{
  {{name}}DataBloc() : super({{name}}RepositoryMixin.{{loaderMethodName}});

  {{#crudMethods}}
  @override
    Future<{{returnType}}> {{operation}}({{^isEmptyArgs}}{ {{/isEmptyArgs}}
    {{#arguments}}{{#isRequiredArg}}required {{/isRequiredArg}} {{argType}}{{#isNullableArg}}?{{/isNullableArg}} {{argName}},
    {{/arguments}} {{^isEmptyArgs}} }{{/isEmptyArgs}}
  ) async {
      final r = await super.{{operation}}({{#parameters}}{{param}},
      {{/parameters}});

      return r;
  }
  {{/crudMethods}}

}
''';

const listCubitTemplate = r'''
// ListCubit for {{name}}

class {{name}}ListBloc extends ListCubit<{{returnType}}, {{#hasFilter}}{{name}}{{filterSuffix}}Filter{{/hasFilter}}{{^hasFilter}}Object{{/hasFilter}}> with {{name}}RepositoryMixin {{#hasBlocMixins}}, {{blocMixins}} {{/hasBlocMixins}}{
  {{name}}ListBloc() : super({{name}}RepositoryMixin.{{loaderMethodName}});

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

const repositoryMixinTemplate = r'''
// RepositoryMixin for {{repositoryName}}RepositoryMixin

mixin {{repositoryName}}RepositoryMixin {
  {{#hasDataLoader}}
  {{#dataLoader}}
static Future<{{returnType}}> {{dataLoaderMethodName}}({{#additionalParams}}{{param}},{{/additionalParams}}[{{#hasFilter}}{{repositoryName}}{{dataFilterSuffix}}Filter? filter{{/hasFilter}}{{^hasFilter}}Object? _{{/hasFilter}},])  async {
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
static Future<List<{{returnType}}>> {{listLoaderMethodName}}({{#additionalParams}}{{param}},{{/additionalParams}}[{{#hasFilter}}{{repositoryName}}{{listFilterSuffix}}Filter? filter{{/hasFilter}}{{^hasFilter}}Object? _{{/hasFilter}},])  async {
    {{#hasRequiredParam}}if (filter == null) {
      throw Exception('Invalid filter');
    }{{/hasRequiredParam}}
    final r = await ApiRepository.instance.{{api}}.{{methodName}}(
      {{#filterParams}}{{param}},{{/filterParams}}
    );

    return r.data?{{#isInline}}.results{{#returnTypeNullabilitySuffix}}?{{/returnTypeNullabilitySuffix}}{{/isInline}}{{#shouldUseAsList}}.asList(){{/shouldUseAsList}}{{^shouldUseAsList}}.toList(growable: false){{/shouldUseAsList}} ?? [];
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

    return r.data{{#isList}}?.{{#shouldUseAsList}}asList(){{/shouldUseAsList}}{{^shouldUseAsList}}toList(growable:false){{/shouldUseAsList}} ?? []{{/isList}};
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
      ..baseUrl = sandboxBasePath
      ..connectTimeout = const Duration(milliseconds: {{connectTimeout}})
      ..receiveTimeout = const Duration(milliseconds: {{receiveTimeout}})
      ..sendTimeout = const Duration(milliseconds: {{sendTimeout}});
  }

  static const String liveBasePath = {{{liveBasePath}}};
  static const String sandboxBasePath = {{{baseUrl}}};

  void updateBaseUrl(String baseUrl) {
    _openapi.dio.options.baseUrl = baseUrl;
  }

  Interceptors get interceptors => _openapi.dio.interceptors;

  static final {{buildForClass}} _openapi = {{buildForClass}}(
    basePathOverride: kReleaseMode ? liveBasePath : null,
    interceptors: [],
  );

  {{buildForClass}} get api => _openapi;
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
