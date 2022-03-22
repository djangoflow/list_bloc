A BLoC library for loading data from an api end-point with filtering and pagination.

The idea for this library is to convert the data loaded from an API into a BLoC to
avoid boilerplate, but at the same time keeping things very simple and generic.

The base classes are `DataCubt<T,F>` where `T` is the type of the data element and
`F` is a class for thr API filtering. It is implemented via `freezed` union of 
`Data`, `Empty`, `Loading`, `Error`.

Then, `ListCubit<T,F>` extends `DataCubit<List<T>,F` to provide a shorthand for
loading list of items.

Further, `ContinousListBloc<T,F>` extends `ListCubit<T,F>` to facilitate implementing
continuous lists. It requires `OffsetLimitFilter` to be implemented by `F` to be able
to load extra data in the end of the list.

Finally, `PaginatedCubit<T,F>` extends `DataCubit<ListPage<T,F>` to provide pagination
and switching between bates.

If you have an API instance that does not use filtering, you can replace the filter
class with Object.

All blocs are expecting to be initialized with a variant of `Future<T> loader([F? filter])`
to get the data from the api and each is slightly different.

The filters can extend Object or any other class however `freezed` is quite
useful for this as this allows re-building filters based on existing ones quite
easily.


## Usage

A simple usage example:

```
import 'packages:list_bloc.dart';

// Can be as complex as the API supports
class ItemFilter {
    enum fruits, vegetables;
}
class Item {
    int type;
    int value;
}

typedef FruitBloc = ListBloc<Item, ItemFilter>;
typedef FruitState = Data<List<Item>, ItemFilter>;

Future List<Item> loader([ItemFilter? filter]) async => api.....

main() {
    final bloc = FruitBloc(loader);

    bloc.load(ItemFilter.fruits);
...
    BlocBuilder<FruitBloc, FruitState>(
        bloc: bloc,
        builder: (context, state) {
            for(var item in state.data) {
                    ...
            }
        } 
}


```

TODO:
[ ] `PaginatedBloc` example
[ ] `ListPage` class explanation

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/apexlabs-ai/list_bloc/issues
