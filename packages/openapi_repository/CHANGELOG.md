## 3.2.1

 - Update a dependency to the latest release.

## 3.2.0

 - updated analyzer dependency and other dependencies

## 3.1.2

 - Update a dependency to the latest release.

## 3.1.1

 - **REFACTOR**: update dart sdk constraints. ([43f7b54e](https://github.com/djangoflow/list_bloc/commit/43f7b54ea5e1e5cde5981683c00005222c3ad86e))

## 3.1.0

 - **FEAT**: remove dioInterceptor field. ([593f9368](https://github.com/djangoflow/list_bloc/commit/593f9368f1927ad6803f0d147992feff3e582151))

## 3.0.1

 - **REFACTOR**(openapi_repository): remove models. ([7d034221](https://github.com/djangoflow/list_bloc/commit/7d03422142c761c23e42cb62343b8987acf712b0))

## [3.0.0] - 20 June 2023

- Updated dependencies
- Added compatibility with Dart 3
- Changed class to mixin for repository. Previously it used to generate `{repositoryName}Repository`, now it generates`{repositoryName}RepositoryMixin`

## [2.0.1] - 1 June 2023

- Fixed using `buildFor` to replace hardcoded `Openapi` class.

## [2.0.0] - 16 March 2023

- Support providing and generating `mixin` with ListBloc/DataBloc.

## [1.1.0] - 13 Jan 2023

- Support providing and generating `mixin` with ListBloc/DataBloc.

```dart
@OpenapiRepository{
    blocMixins: [BlocMixin(SomeMixin)],
    ....
}

would now generate

class SomeListBloc extends ListCubit<SomeDataModel, SomeListFilter>
    with SomeRepository, SomeMixin
```

## [1.0.2] - 26 Oct 2022

- Upgraded analyzer to `5.2.0`

## [1.0.1] - 26 Aug 2022

- Removed reloading DataBloc state after update operations

## [1.0.0] - 17 Aug 2022

- Initial version. Includes generation of ListBloc and DataBloc codes from OpenAPI repository.
