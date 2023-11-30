# Flutter List Bloc Package

## Overview

The `flutter_list_bloc` package is a Flutter-specific extension of the `list_bloc` package, designed to seamlessly integrate BLoC pattern with Flutter widgets for efficient data management and UI rendering. It provides a set of builders and widgets that work with different types of lists and data structures, making it easier to manage state and build responsive UIs in Flutter applications.

## Key Components

- **ListBlocBuilder**: Builds a list of items based on the state of a `ListCubit`.
- **DataBlocBuilder**: Manages the rendering of a single data item based on the state of a `DataCubit`.
- **ListViewBlocBuilder**: Extends `ListBlocBuilder` for building scrollable lists.
- **ContinuousScrollBuilder**: Implements infinite scrolling functionality.
- **ContinuousListViewBlocBuilder**: Combines `ListViewBlocBuilder` with `ContinuousScrollBuilder` for infinite scrolling lists.
- **PageViewBlocBuilder**: Manages paginated data using `PaginatedCubit`.
- **SliverListBlocBuilder**: Integrates with Flutter's sliver widgets for custom scroll effects.

## Installation

Include the package in your Flutter project by adding it to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_list_bloc: ^latest_version
```

## Usage

### Basic ListBlocBuilder Example

```dart
ListBlocBuilder<MyListCubit, MyItemType, MyFilterType>(
  cubit: myListCubit,
  itemBuilder: (context, state, index, item) => MyItemWidget(item),
  emptyBuilder: (context, state) => Text('No items found'),
  loadingBuilder: (context, state) => CircularProgressIndicator(),
  builder: (context, state, itemCount, itemBuilder) => ListView.builder(
    itemCount: itemCount,
    itemBuilder: itemBuilder,
  ),
)
```

### ContinuousListViewBlocBuilder for Infinite Scrolling

```dart
ContinuousListViewBlocBuilder<MyListCubit, MyItemType, MyFilterType>(
  cubit: myListCubit,
  itemBuilder: (context, state, index, item) => MyItemWidget(item),
  emptyBuilder: (context, state) => Text('No more items'),
  loadingBuilder: (context, state) => CircularProgressIndicator(),
  // Additional configurations...
)
```

### PageViewBlocBuilder for Paginated Data

```dart
PageViewBlocBuilder<MyPaginatedItemType, MyFilterType>(
  cubit: myPaginatedCubit,
  pageBuilder: (context, state) => MyPageWidget(state.data),
  emptyBuilder: (context, state) => Text('No pages available'),
  // Additional configurations...
)
```

Other builder classes have similar pattern and attributes.

## Features and Bugs

We encourage feedback and contributions to improve this package. Please file feature requests and bugs at the [issue tracker](https://github.com/your-repo/flutter_list_bloc/issues).
