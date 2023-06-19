# Openapi Repository Generator

## Abstract

The aim of this generator is to generate repositories, blocs and [freezed](https://pub.dev/packages/freezed) models for query params filters for OpenApi module.

[openapi-generator-cli](https://github.com/OpenAPITools/openapi-generator-cli) is a very powerful tool that allows us to generate client libraries(api calling methods) following Repository pattern, documentation, tests etc for `Dart` language from the OpenApi/Swagger spec file. A good can be this article on how to generate OpenApi client library from OpenApi/Swagger specification [Article Link](https://medium.com/@rtlsilva/generating-dart-rest-api-client-libraries-using-openapi-generator-9b3dc517e68c)

But generated client library containing OpenApi endpoints is not very efficient to use with pagination or filtering data. Here [list_bloc](../list_bloc) comes into play. It utilizes the [Bloc](https://pub.dev/packages/bloc) library to create `DataCubit`, `ListCubit` state management solution. Which supports pagination and filtering data for the generated endpoints. And help us remove a lot boilerplate codes to support pagination and filtering.

And our `openapi_repository` library takes that to even further. It is possible to provide those endpoints, it will automatically generate `DataCubit` and `ListCubit` which can be easily used to with widgets provided in [list_bloc](../list_bloc/) and [flutter_list_bloc](../flutter_list_bloc/)

It will create generate Repository like this with relevant methods

## Usage

Make sure you've generated `OpenApi` client library using OpenApi(Swagger) schema definitions and [openapi-generator-cli](https://github.com/OpenAPITools/openapi-generator-cli). And make sure that each `operationId` in the OpenApi(Swagger) schema has operations(`create`, `update`, `partial_update`, `retrieve`, `destroy`, `list` etc) suffix which helps the library to detect methods. For each CRUD operations it also checks api call method. (retrieve -> GET, list -> GET, create -> POST, update -> PUT, partial_update -> PATCH, destroy -> DELETE)

Then create a flutter/dart project. Make sure previously generated(using openapi-generator-cli) OpenApi client library can be imported in the flutter/dart project. Then install these depdencies

For Flutter:

```Dart
flutter pub add openapi_repository_annotations
flutter pub add list_bloc
flutter pub add flutter_list_bloc
flutter pub add dio
flutter pub add openapi_repository --dev
flutter pub add build_runner --dev
flutter pub add built_value_generator --dev
```

For Dart:

```Dart
dart pub add openapi_repository_annotations
dart pub add list_bloc
dart pub add flutter_list_bloc
dart pub add dio
dart pub add openapi_repository --dev
dart pub add build_runner --dev
dart pub add built_value_generator --dev
```

Use `@OpenapiRepository` annotation on the class that will hold the generated files. Use annoation params to configure how the files should be generated. Example: [Annotation Usage](https://github.com/djangoflow/demo-flutter/blob/main/packages/demo/lib/data/api_repository/api_repository.dart)

Here `$ApiRepository` class will holding the generated files in `part 'api_repository.openapi.dart'; part 'api_repository.freezed.dart'; part 'api_repository.g.dart';` directories. This generator will add files to `part 'api_repository.openapi.dart';` first.

After adding annotation run `flutter pub run build_runner build --delete-conflicting-outputs`
or
`dart run build_runner build --delete-conflicting-outputs`

This should generate Repository, DataBlocs, ListBlocs in the same directory as the `$ApiRepository` class.

Generated `ApiRepository` class will look something like this

```Dart
class ApiRepository {
  static ApiRepository get instance => _instance;
  static final ApiRepository _instance = ApiRepository._internal();

  ApiRepository._internal() {
    _openapi.dio.options
      ..baseUrl = sandboxBasePath
      ..connectTimeout = 3000
      ..receiveTimeout = 5000
      ..sendTimeout = 3000;
    _openapi.dio.interceptors.add(Interceptor());
  }

  static const String liveBasePath = 'https://petstore.swagger.io/v2';
  static const String sandboxBasePath = 'https://petstore.swagger.io/v2';

  void updateBaseUrl(String baseUrl) {
    _openapi.dio.options.baseUrl = baseUrl;
  }

  static final Openapi _openapi = Openapi(
    basePathOverride: kReleaseMode ? liveBasePath : null,
    interceptors: [],
  );

  Openapi get api => _openapi;
  PetApi get pet => api.getPetApi();
  StoreApi get store => api.getStoreApi();
  UserApi get user => api.getUserApi();
}
```

And Generated Repository from endpoints will look like something like this

```Dart
mixin PetRepository {
  static Future<Pet> retrieve([
    PetRetrieveFilter? filter,
  ]) async {
    if (filter == null) {
      throw Exception('Invalid filter');
    }
    final r = await ApiRepository.instance.pet.petRetrieve(
      petId: filter.petId,
    );
    if (r.data == null) {
      throw Exception('Failed to load data!');
    } else {
      return r.data!;
    }
  }

  Future<void> create({
    required Pet body,
  }) async {
    ........
}

```

And `ListBloc` and `DataBloc` with relevant methods extending the generated `RepositoryMixin` like `PetRepositoryMixin` will be generated as well.

```Dart
class PetDataBloc extends DataCubit<Pet, PetRetrieveFilter> with PetRepositoryMixin {
  PetDataBloc(
    Future<Pet> Function([
      PetRetrieveFilter? filter,
    ])
        loader,
  ) : super(PetRepository.retrieve);

  @override
  Future<void> create({
    required Pet body,
  }) async {
    final r = await super.create(
      body: body,
    );

    return r;
  }
  .........
}

```

And we can directly use this piece of `PetDataBloc` with widgets from [flutter_list_bloc](../flutter_list_bloc/)

Example:

```Dart
DataBlocBuilder<PetDataBloc, Pet, PetRetrieveFilter>(
  create: (context) => PetDataBloc(PetRepository.retrieve)
    ..load(
      PetRetrieveFilter(petId: widget.petId),
    ),
  emptyBuilder: (_, __) => const Center(
    child: Text('No data'),
  ),
  loadingBuilder: (_, __) => const Center(
    child: CircularProgressIndicator(),
  ),
  itemBuilder: (context, state) => .........
```

For full example: [Example generated files](https://github.com/djangoflow/demo-flutter/blob/main/packages/demo/lib/data/api_repository/api_repository.openapi.dart)

### How this library works

This library uses annotation(`@OpenapiRepository`) on a class. This annonated class will hold all the generated `Repository, DataBlocs, ListBlocs`. It searches for `{methodPrefix}Retrieve/List` (where request api call method is also `GET`) and then finds relevant `{methodPrefix}Update/PartialUpdate/Destroy/{randomMethod sufix}` and put them inside annotated class in Repository pattern. Based on the generated class from annotation it will generate `DataBlocs`(for `{methodPrefix}Retrieve`) and `ListBlocs`(for `{methodPrefix}List`) and these `Blocs` will inherite other methods inside the generated class. These Blocs can be directly used with [flutter_list_bloc](../flutter_list_bloc/) or [list_bloc](../list_bloc/) widgets.

![Flow](https://i.ibb.co/CBjPJwy/doc.png)

### Tutorials for code generation from annotation

To learn more about code generation using annotation:

- https://developpaper.com/dart-generate-code-from-annotations/
- https://www.raywenderlich.com/22180993-flutter-code-generation-getting-started

### Annotation

A package called `openapi_repository_annotations` is created to hold all annotations. This will be added as a `dependency` module in the projects, while the generator itself will be a `dev-dependency`.

For the purpose of this project, we have created an annotation called `@OpenapiRepository()` which can also be invoked with `@openApiRepository`. The annotation must be have a `const` constructor for it to be used as a subtype for `GeneratorForAnnotation`.

`@OpenapiRepository()` Takes multiple values

- `Type buildFor` : The main OpenApi class which contains all the API Objects(which are used to fetch Api methods for each API Object. Ex: OpenApi -> AccountsApi -> {AccountsApi related API methods}).
- `List<RepositoryBuilder> builderList` : It helps to pass allowed/ingorable methods for a API class object. `RepositoryBuilder` contains List of allowed and ingorable api method names. if the value is [*] then all will be counted for allowed/ingorable for that method. For example: We can pass `RepositoryBuilder(AccountsApi, allowedEndpoints: [*], ignoreEndpoints = [])` then it will generate for all the endpoints that is included inside `AccountsApi` class and ingore none of the endpoints.
- `List<BlocMixin> blocMixins` : It helps to pass `BlocMixin`s which hold a dart `mixin` element. Generated ListBloc/DataBloc will use the provided mixins.
- `int connectTimeout` : timeout for the connecting with the server. Default: 10000
- `int receiveTimeout` : timeout for to receive data from server. Default: 15000
- `int sendTimeout` : timeout to send/upload data to the server. Default: 15000
- `int defaultOffset` : Default offset for paginated APIs. Default: 0
- `int defaultPageSize` : Default pagesize/limit for paginated APIs. Default: 100
- `Type? dioInterceptor` : Includable `DioInterceptor`
- `String? liveBasePath` : Includable `baseUrl` for liveMode(kReleaseMode) which will override the default `baseUrl` in liveMode.
- `String? baseUrl` : Includable `baseUrl` which will be used for default `baseUrl` for Dio configuration

For example please follow this link:
[Annotation Usage](https://github.com/djangoflow/demo-flutter/blob/main/packages/demo/lib/data/api_repository/api_repository.dart)

This will generate Filter, DataCubit, ListCubit, Repository classes with Dio configuration.

Generated files will in `{fileName}.openapi.dart`.

For generated example file please follow this link:
[Generated Classes](https://github.com/djangoflow/demo-flutter/blob/main/packages/demo/lib/data/api_repository/api_repository.openapi.dart)

### Generator

The generator code is available in lib/src/list_repository_generator.dart
For this use case we went ahead with `GeneratorForAnnotation` so that we can create an Annotation that we can use to mark classes on which the generator is supposed to run on.

Any class which extends from `GeneratorForAnnotation` should override the `generateForAnnotatedElement` method. This method should return a `String`, which is passed out as the output for the generator.

For e.g.

```Dart
class OpenapiRepositoryGenerator extends GeneratorForAnnotation<OpenapiRepository> {

    @override
    String generateForAnnotatedElement(
        Element element,
        ConstantReader annotation,
        BuildStep buildStep,
    ) {
        return '// Output';
    }
}
```

The above code block will generate a file with an output similar to the below block.

```Dart
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xxxxxxxxxxxx.dart';

// **************************************************************************
// xxxxxxxxxxxxxxxxGenerator
// **************************************************************************

// Output

```

The most important of the `generateForAnnotatedElement` method is the `Element` argument, which provides details on the Class/method/function/type that the annotation was placed on. Using the element we can get more insights on whether the element is static, or private, etc. Additionally it is possible to peek into the Element and get more data on it's child elements as well. This can be done by creating an instance of an `ElementVisitor` and using `element.visitChildren(vistor)`.

### Visitor

To take a peek into the inner fields or parameters or property accessors, etc, we need to define a class which extends from `SimpleElementVisitor`. In this project, this is done at `model_visitor.dart` where 2 instances of `SimpleElementVisitors` are created.

#### `_getGeneratedCodesFromBuilder`

This method is created to perform the following steps

1. Iterate over all methods in a class.
2. For every method in the class, check if the return type is `Future<T>` such that
   - `T` is either an instance of `List` or `BuiltList` for List method, or any object for Retrieve method **OR**
   - For List method, `T` has a parameter called `results` such that `results` is an instance of `List` or `BuiltList`. This happens when the API returns a paginated response. To acheive this another visitor called `InlineClassVisitor` is used.
3. If 2 is satisfied, the required data is parsed into a class called `RepositoryModel` and saved in the `listMethods` field of the visitor which can then be accessed from the calling `Element`.

#### NamedExpressionVisitor

This class helps to find the api call type(PUT, POST, DELETE etc) of an method.

### Builder

The builder defines the type of builder to use. In the case of this project a `PartBuilder` is used.

```dart
Builder generateListRepository(BuilderOptions options) => PartBuilder(
      [OpenapiRepositoryGenerator()],
      '.query.dart',
    );
```

We have to define here what the part declaration needs to be. In this case we went ahead with `.query.dart`.

We cannot use a `SharedPartBuilder` as of now because, the code that is generated also creates `@freezed` annotations. There are a few issues created related to this which suggested to go ahead with `PartBuilder`

- https://github.com/dart-lang/build/issues/2389
- https://github.com/dart-lang/source_gen/issues/446
- https://github.com/dart-lang/build/issues/2611

### build.yaml

This is the file which tells `builder` how to build the code

```yaml
targets:
  $default:
    builders:
      generators|annotations:
        enabled: true

builders:
  generators:
    target: ":generators"
    import: "package:openapi_repository/openapi_repository.dart"
    builder_factories: ["generateListRepository"]
    build_extensions: { ".dart": [".g.dart"] }
    auto_apply: dependents
    runs_before: [freezed_annotations|freezed_annotations]
    build_to: source # Tells builder to generate file to the same path of the file where annotation was created and not to the default .dart_tool/build/generated/ path.
    applies_builders: ["source_gen|combining_builder"]
```
