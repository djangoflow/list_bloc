import 'package:bloc_test/bloc_test.dart';
import 'package:list_bloc/list_bloc.dart';
import 'package:test/test.dart';

import '../helpers/item.dart';
import '../helpers/server_exception.dart';

void main() {
  group('ListCubit', () {
    final error = ServerException();

    late ListCubit<Item, ItemType> cubit;

    setUp(() {
      cubit = ListCubit<Item, ItemType>(
        ([ItemType? filter]) async => [
          Item(type: ItemType.fruit, value: 'Apple'),
          Item(type: ItemType.vegetable, value: 'Potato'),
        ].where((item) => item.type == filter).toList(),
      );
    });

    blocTest<ListCubit<Item, ItemType>, Data<List<Item>, ItemType>>(
      'is able to reload its data',
      build: () => cubit,
      act: (cubit) async {
        await cubit.load(ItemType.fruit);
        await cubit.reload(ItemType.vegetable);
      },
      expect: () => [
        Data<List<Item>, ItemType>.loading(
          filter: ItemType.fruit,
        ),
        Data<List<Item>, ItemType>(
          data: [Item(type: ItemType.fruit, value: 'Apple')],
          filter: ItemType.fruit,
        ),
        Data<List<Item>, ItemType>.loading(
          data: [Item(type: ItemType.fruit, value: 'Apple')],
          filter: ItemType.vegetable,
        ),
        Data<List<Item>, ItemType>(
          data: [Item(type: ItemType.vegetable, value: 'Potato')],
          filter: ItemType.vegetable,
        ),
      ],
    );

    blocTest<ListCubit<Item, ItemType>, Data<List<Item>, ItemType>>(
      'is able to append data correctly',
      build: () => cubit,
      act: (cubit) async {
        await cubit.load(ItemType.fruit);
        await cubit.append(ItemType.vegetable);
        await cubit.append();
      },
      expect: () => [
        Data<List<Item>, ItemType>.loading(
          filter: ItemType.fruit,
        ),
        Data<List<Item>, ItemType>(
          data: [Item(type: ItemType.fruit, value: 'Apple')],
          filter: ItemType.fruit,
        ),
        Data<List<Item>, ItemType>.loading(
          data: [Item(type: ItemType.fruit, value: 'Apple')],
          filter: ItemType.vegetable,
        ),
        Data<List<Item>, ItemType>(
          data: [
            Item(type: ItemType.fruit, value: 'Apple'),
            Item(type: ItemType.vegetable, value: 'Potato')
          ],
          filter: ItemType.vegetable,
        ),
        Data<List<Item>, ItemType>.loading(
          data: [
            Item(type: ItemType.fruit, value: 'Apple'),
            Item(type: ItemType.vegetable, value: 'Potato')
          ],
          filter: ItemType.vegetable,
        ),
        Data<List<Item>, ItemType>(
          data: [
            Item(type: ItemType.fruit, value: 'Apple'),
            Item(type: ItemType.vegetable, value: 'Potato'),
            Item(type: ItemType.vegetable, value: 'Potato'),
          ],
          filter: ItemType.vegetable,
        ),
      ],
    );

    blocTest<ListCubit<Item, ItemType>, Data<List<Item>, ItemType>>(
      'emits an error state when loader function throws as it tries to append data',
      build: () => ListCubit<Item, ItemType>(
        ([ItemType? filter]) async {
          if (filter == ItemType.fruit) {
            throw error;
          }

          return [Item(type: ItemType.vegetable, value: 'Potato')];
        },
      ),
      act: (cubit) async {
        await cubit.load(ItemType.vegetable);

        try {
          await cubit.append(ItemType.fruit);
        } catch (_) {}
      },
      expect: () => [
        Data<List<Item>, ItemType>.loading(
          filter: ItemType.vegetable,
        ),
        Data<List<Item>, ItemType>(
          data: [Item(type: ItemType.vegetable, value: 'Potato')],
          filter: ItemType.vegetable,
        ),
        Data<List<Item>, ItemType>.loading(
          data: [Item(type: ItemType.vegetable, value: 'Potato')],
          filter: ItemType.fruit,
        ),
        Data<List<Item>, ItemType>.error(
          data: [Item(type: ItemType.vegetable, value: 'Potato')],
          filter: ItemType.fruit,
          error: error,
        ),
      ],
    );

    blocTest<ListCubit<Item, ItemType>, Data<List<Item>, ItemType>>(
      'is able to remove item locally when item is present',
      build: () => cubit,
      seed: () => Data<List<Item>, ItemType>(
        data: [
          Item(type: ItemType.fruit, value: 'Apple'),
          Item(type: ItemType.vegetable, value: 'Potato'),
        ],
      ),
      act: (bloc) => bloc.removeLocally(
        Item(type: ItemType.fruit, value: 'Apple'),
      ),
      expect: () => [
        isA<Data<List<Item>, ItemType>>().having(
          (state) => state.data?.where((e) => e.value == 'Apple').isEmpty,
          'Does not contain removed element',
          true,
        ),
      ],
    );

    blocTest<ListCubit<Item, ItemType>, Data<List<Item>, ItemType>>(
      'emits empty state when list is empty after removeLocally',
      build: () => cubit,
      seed: () => Data<List<Item>, ItemType>(
        data: [Item(type: ItemType.fruit, value: 'Apple')],
      ),
      act: (bloc) => bloc.removeLocally(
        Item(type: ItemType.fruit, value: 'Apple'),
      ),
      expect: () => [
        isA<Empty<List<Item>, ItemType>>().having(
          (state) => state.data,
          'is an empty list',
          [],
        ),
      ],
    );

    blocTest<ListCubit<Item, ItemType>, Data<List<Item>, ItemType>>(
      'does not emit if item is not present in list',
      build: () => cubit,
      seed: () => Data<List<Item>, ItemType>(
        data: [
          Item(type: ItemType.fruit, value: 'Apple'),
        ],
      ),
      act: (bloc) => bloc.removeLocally(
        Item(type: ItemType.vegetable, value: 'Potato'),
      ),
      expect: () => [],
    );

    blocTest<ListCubit<Item, ItemType>, Data<List<Item>, ItemType>>(
      'emits type of original state when list is not empty after removeLocally',
      build: () => cubit,
      seed: () => Loading<List<Item>, ItemType>(
        data: [
          Item(type: ItemType.fruit, value: 'Apple'),
          Item(type: ItemType.vegetable, value: 'Potato'),
        ],
      ),
      act: (bloc) => bloc.removeLocally(
        Item(type: ItemType.fruit, value: 'Apple'),
      ),
      expect: () => [
        isA<Loading<List<Item>, ItemType>>().having(
          (state) => state.data,
          'is a list with one element',
          [
            Item(type: ItemType.vegetable, value: 'Potato'),
          ],
        ),
      ],
    );
  });
}
