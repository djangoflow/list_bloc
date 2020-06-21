A BLoC library for loading data from an api end-point with filtering and pagination.

The idea for this library is to convert the data loaded from an API into a BLoC to
avoid boiler plate, but at the same time keeping things very simple and generic.

The base classes are `DataBloc<T,F>` with `DataEvent<T,F>` and `DataState<T,F>`
where `T` is the type of the data element and `F` is a class for thr API filtering.

Then, `ListBloc<T,F>` extends `DataBloc<List<T>,F` to provide a shorthand for
loading list of items.

Further, `PaginatedBloc<T,F>` extends `DataBloc<ListPage<T,F>` to provide pagination.

If you have an API instance that does not use filtering, you can replace the filter
class with Object.

The three blocs are expecting to be initialized with a `DataRepository`, `ListRepository`
or `PaginatedRepository` respectively, all of which should implement a `Future load({F filter})`
which is slightly different for List or Paginated bloc.

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
class ItemRepository implements ListRepository<Item, ItemFilter> {
    Future List<Item>load({ItemFilter filter}) async => await apiList(type: filter);
}


main() {
    final bloc = ListBloc<Item, ItemFilter>(ItemRepository());

    bloc.load(ItemFilter.fruits);
...
    BlocBuilder<ListBloc<Item, ItemFilter>, DataState<Item, ItemFilter>(
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
