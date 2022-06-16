# Openapi Repository Generator

The aim of this generator is to generate list repositories, and freezed models for query params filters.

## Usage

Make sure you've generated Client library using OpenApi(Swagger) schema definitions. And make sure that each `operationId` has operations(create, update, partialUpdate, read, delete etc) suffix which helps the library to detect methods.

Then create a flutter/dart project and use `OpenapiRepository` annotation to configure how the files should be generated. Example: [a Annotation Usage](example/open_api_flutter_example/lib/data/api_repository/api_repository.dart)

### Annotation

A package called `openapi_repository_annotations` is created to hold all annotations. This will be added as a `dependency` module in the projects, while the generator itself will be a `dev-dependency`.

For the purpose of this project, we have created an annotation called `@OpenapiRepository()` which can also be invoked with `@openApiRepository`. The annotation must be have a `const` constructor for it to be used as a subtype for `GeneratorForAnnotation`.

`@OpenapiRepository()` Takes multiple values

- `Type buildFor` : The main OpenApi class which contains all the API Objects(which are used to fetch Api methods for each API Object. Ex: OpenApi -> AccountsApi -> {AccountsApi related API methods}).
- `List<ListRepositoryBuilder> builderList` : It helps to pass allowed/ingorable methods for a API class object. `ListRepositoryBuilder` contains List of allowed and ingorable api method names. if the value is [*] then all will be counted for allowed/ingorable for that method. For example: We can pass `ListRepositoryBuilder(AccountsApi, listEndpoints: [*], ignoreEndpoints = [])` then it will generate for all the endpoints that is included inside `AccountsApi` class and ingore none of the endpoints.
- `int connectTimeout` : timeout for the connecting with the server. Default: 10000
- `int receiveTimeout` : timeout for to receive data from server. Default: 15000
- `int sendTimeout` : timeout to send/upload data to the server. Default: 15000
- `int defaultOffset` : Default offset for paginated APIs. Default: 0
- `int defaultPageSize` : Default pagesize/limit for paginated APIs. Default: 100
- `Type? dioInterceptor` : Includable `DioInterceptor`
- `String? liveBasePath` : Includable `baseUrl` for liveMode(kReleaseMode) which will override the default `baseUrl` in liveMode.
- `String? baseUrl` : Includable `baseUrl` which will be used for default `baseUrl` for Dio configuration

For example please follow this link:
[a Annotation Usage](example/open_api_flutter_example/lib/data/api_repository/api_repository.dart)

This will generate Filter, DataCubit, ListCubit, Repository classes with Dio configuration.

Generated files will in `{fileName}.openapi.dart`.

For generated example file please follow this link:
[a Generated Classes](example/open_api_flutter_example/lib/data/api_repository/api_repository.openapi.dart)

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

#### ClassPropertiesVisitor

This class is created to perform the following steps

1. Iterate over all methods in a class.
2. For every method in the class, check if the return type is `Future<T>` such that
   - `T` is either an instance of `List` or `BuiltList` **OR**
   - `T` has a parameter called `results` such that `results` is an instance of `List` or `BuiltList`. This happens when the API returns a paginated response. To acheive this another visitor called `InlineClassVisitor` is used.
3. If 2 is satisfied, the required data is parsed into a class called `RepositoryModel` and saved in the `listMethods` field of the visitor which can then be accessed from the calling `Element`.

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
    import: "package:openapi_repository/builder.dart"
    builder_factories: ["generateListRepository"]
    build_extensions: { ".dart": [".g.dart"] }
    auto_apply: dependents
    runs_before: [freezed_annotations|freezed_annotations]
    build_to: source # Tells builder to generate file to the same path of the file where annotation was created and not to the default .dart_tool/build/generated/ path.
    applies_builders: ["source_gen|combining_builder"]
```
