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
