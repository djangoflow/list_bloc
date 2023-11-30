# list_bloc

## Overview

This Flutter package is a comprehensive BLoC library designed for loading, managing, and displaying data with support for filtering and pagination. It simplifies handling various data states like loading, empty, error, and loaded, using the `freezed` package.

## Key Components

- `DataCubit<T, F>`: Manages the state of data with generic types for data (`T`) and filters (`F`).
- `ListCubit<T, F>`: Specialized for handling lists of data, extending `DataCubit`.
- `PaginatedCubit<T, F>`: Tailored for paginated data handling, extending `DataCubit`.
- `ContinousListBloc<T, F>`: Extends `ListCubit` for continuous list implementation, requiring `OffsetLimitFilter` in the filter class.

## Installation

Add this package to your Flutter project by including it in your `pubspec.yaml` file:

```yaml
dependencies:
  list_bloc: ^latest_version
```

## Usage

### Basic Usage of `DataCubit`

```dart
final dataCubit = DataCubit<YourDataType, YourFilterType>(yourDataLoaderFunction);

// Load data
dataCubit.load();

// Clear data
dataCubit.clear();
```

### Using `ListCubit` for List Management

```dart
final listCubit = ListCubit<YourListItemType, YourFilterType>(yourListLoaderFunction);

// Reload the entire list
listCubit.reload();

// Append more items to the existing list
listCubit.append();

// Add or remove items locally
listCubit.addLocally(yourItem);
listCubit.removeLocally(yourItem);
```

### Working with `PaginatedCubit`

```dart
final paginatedCubit = PaginatedCubit<YourPaginatedItemType, YourFilterType>(yourPaginatedLoaderFunction);

// Usage is similar to DataCubit, but tailored for paginated data.
```

### Advanced Usage Example

```dart
import 'package:list_bloc.dart';

class ItemFilter {
  enum Type { fruits, vegetables }
}

class Item {
  int type;
  int value;
}

typedef FruitBloc = ListBloc<Item, ItemFilter>;
typedef FruitState = Data<List<Item>, ItemFilter>;

Future<List<Item>> loader([ItemFilter? filter]) async => api.....

void main() {
  final bloc = FruitBloc(loader);

  bloc.load(ItemFilter.Type.fruits);

  BlocBuilder<FruitBloc, FruitState>(
    bloc: bloc,
    builder: (context, state) {
      for (var item in state.data) {
        // Handle your data
      }
    },
  );
}
```

## Features and Bugs

We welcome your feedback and contributions to this package. Please file feature requests and bugs at the [issue tracker](https://github.com/djangoflow/list_bloc/issues).
