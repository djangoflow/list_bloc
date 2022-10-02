import 'dart:core';

import 'package:list_bloc/list_bloc.dart';
import 'package:test/test.dart';

// Can be as complex as the API supports
enum ItemFilter { fruits, vegetables }

class Item {
  Item({required this.type, required this.value});

  final ItemFilter type;
  final int value;
}

typedef FruitBloc = ListCubit<Item, ItemFilter>;
typedef FruitState = Data<List<Item>, ItemFilter>;

void main() {
  group('Tests for list bloc', () {
    final fruit1 = Item(type: ItemFilter.fruits, value: 1);
    final fruit2 = Item(type: ItemFilter.fruits, value: 2);
    final fruit3 = Item(type: ItemFilter.fruits, value: 3);
    final fruit4 = Item(type: ItemFilter.fruits, value: 4);

    Future<List<Item>> loader([ItemFilter? filter]) async => [
          fruit1,
          fruit2,
          fruit3,
          Item(type: ItemFilter.vegetables, value: 4),
          Item(type: ItemFilter.vegetables, value: 5),
        ].where((e) => e.type == filter).toList();

    late ListCubit<Item, ItemFilter> bloc;

    setUp(() {
      /// Create a `FruitBloc` instance.
      bloc = FruitBloc(loader);

      /// Load data to trigger `state` changes.
      bloc.load(ItemFilter.fruits);
    });

    test('Initial state', () {
      expect(
        bloc.state.data,
        [fruit1, fruit2, fruit3],
      );
    });

    test('Remove an element from the list by reference', () {
      bloc.remove(fruit1);
      expect(bloc.state.data, [fruit2, fruit3]);
    });

    test('Remove an element from the list by comparator', () async {
      bloc.removeWhere((e) => e.value == 3);
      expect(bloc.state.data, [fruit1, fruit2]);
    });

    test('Add an element to the list', () {
      bloc.add(fruit4);
      expect(bloc.state.data, [fruit1, fruit2, fruit3, fruit4]);
    });

    test('Replace an element in the list by reference', () {
      bloc.replace(replaceWhat: fruit2, replaceWith: fruit4);
      expect(bloc.state.data, [fruit1, fruit4, fruit3]);
    });

    test('Replace an element in the list by comparator', () {
      bloc.replaceWhere(
        replaceWhere: (e) => e.value == 3,
        replaceWith: fruit4,
      );
      expect(bloc.state.data, [fruit1, fruit2, fruit4]);
    });
  });
}
