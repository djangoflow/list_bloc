## 3.4.5

 - **REFACTOR**: update analyzer. ([d0b47a59](https://github.com/djangoflow/list_bloc/commit/d0b47a59c1e20c1cc680005e4960391b2686c7c7))
 - **REFACTOR**: move linter ignore in header. ([ec1aa601](https://github.com/djangoflow/list_bloc/commit/ec1aa601452e275252bf6c8a171714ea5041522d))

## 3.4.4

 - **FIX**: do not show linter warning for generated files. ([e254e3a4](https://github.com/djangoflow/list_bloc/commit/e254e3a4db6d9f29a6dd10831dd6e8f8cda25887))

## 3.4.3

 - **REFACTOR**: add ignoreParams. ([4c0262a2](https://github.com/djangoflow/list_bloc/commit/4c0262a249c7361e8740b5102ef8d0a41403e2a1))
 - **REFACTOR**: update README. ([9bcd6cf2](https://github.com/djangoflow/list_bloc/commit/9bcd6cf2ba17ebf2d982c7b686933d0b2c0323b4))

## 3.4.2

 - **REFACTOR**: remove not needed dependencies. ([91f3a9bc](https://github.com/djangoflow/list_bloc/commit/91f3a9bcd999aa7da2cfc1b5edc9c61aaf370d20))

## 3.4.1

 - Update a dependency to the latest release.

## 3.4.0

 - **REFACTOR**: remove flutter sdk dependencies. ([94b26ba6](https://github.com/djangoflow/list_bloc/commit/94b26ba64bab30d2a4a65dbac0cc38a7ebdacdcc))

## 3.3.0

 - **REVERT**(openapi_repository): use 5.x.x analyzer. ([5fab225c](https://github.com/djangoflow/list_bloc/commit/5fab225c65802eb370eed6076069cf1bd2cb106f))
 - **FEAT**(openapi_repository): expose interceptors getter in ApiRepository's template. ([67ac2069](https://github.com/djangoflow/list_bloc/commit/67ac206953ab88107cac01f9133ef9a225b7ef5d))

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
