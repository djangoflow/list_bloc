import 'dart:core';

import 'package:list_bloc/list_bloc.dart';

// Can be as complex as the API supports
enum ItemFilter { fruits, vegetables }

class Item {
  Item({required this.type, required this.value});

  final ItemFilter type;
  final int value;
}

typedef FruitBloc = ListCubit<Item, ItemFilter>;
typedef FruitState = Data<List<Item>, ItemFilter>;

final fruit = Item(type: ItemFilter.fruits, value: 1);
final fruit2 = Item(type: ItemFilter.fruits, value: 2);

Future<List<Item>> loader([ItemFilter? filter]) async => [
      fruit,
      fruit2,
      Item(type: ItemFilter.fruits, value: 3),
      Item(type: ItemFilter.vegetables, value: 4),
      Item(type: ItemFilter.vegetables, value: 5),
    ].where((e) => e.type == filter).toList();

void main() async {
  /// Create a `FruitBloc` instance.
  final bloc = FruitBloc(loader);

  /// Load data to trigger `state` changes.
  bloc.load(ItemFilter.fruits);

  /// Wait for next iteration of the event-loop
  /// to ensure event has been processed.
  await Future<void>.delayed(Duration.zero);

  print('Initial state.');
  bloc.state.data?.forEach((e) => print(e.value));
  print('---');

  print('Removed an element 1 from the list by reference.');
  bloc.remove(fruit);
  bloc.state.data?.forEach((e) => print(e.value));
  print('---');

  print('Removed an element 3 from the list by comparator.');
  bloc.removeWhere((e) => e.value == 3);
  bloc.state.data?.forEach((e) => print(e.value));
  print('---');

  print('Added an element 7 to the list.');
  bloc.add(Item(type: ItemFilter.fruits, value: 7));
  bloc.state.data?.forEach((e) => print(e.value));
  print('---');

  print('Replaced an element 2 in the list by reference with element 8.');
  bloc.replace(
    replaceWhat: fruit2,
    replaceWith: Item(type: ItemFilter.fruits, value: 8),
  );
  bloc.state.data?.forEach((e) => print(e.value));
  print('---');

  print('Replaced an element 8 in the list by comparator with element -1.');
  bloc.replaceWhere(
    replaceWhere: (e) => e.value == 8,
    replaceWith: Item(type: ItemFilter.fruits, value: -1),
  );
  bloc.state.data?.forEach((e) => print(e.value));
  print('---');
}
