import 'package:bloc_test/bloc_test.dart';
import 'package:list_bloc/list_bloc.dart';
import 'package:test/test.dart';

import '../helpers/item.dart';
import '../helpers/server_exception.dart';

void main() {
  group('DataCubit', () {
    final error = ServerException();

    late DataCubit<Item, ItemType> cubit;

    setUp(() {
      cubit = DataCubit<Item, ItemType>(
        ([ItemType? _]) async => Item(type: ItemType.fruit, value: 'Apple'),
      );
    });

    blocTest<DataCubit<Item, ItemType>, Data<Item, ItemType>>(
      'is able to load data asynchronously',
      build: () => cubit,
      act: (cubit) => cubit.load(),
      expect: () => [
        Data<Item, ItemType>.loading(),
        Data<Item, ItemType>(
          data: Item(type: ItemType.fruit, value: 'Apple'),
        ),
      ],
    );

    blocTest<DataCubit<Item, ItemType>, Data<Item, ItemType>>(
      'is able to remove all stored data',
      build: () => cubit,
      act: (cubit) async {
        await cubit.load();
        cubit.clear();
      },
      expect: () => [
        Data<Item, ItemType>.loading(),
        Data<Item, ItemType>(
          data: Item(type: ItemType.fruit, value: 'Apple'),
        ),
        Data<Item, ItemType>.empty(),
      ],
    );

    blocTest<DataCubit<Item, ItemType>, Data<Item, ItemType>>(
      'is able to update the stored data',
      build: () => cubit,
      act: (cubit) async {
        await cubit.load();
        cubit.update(Item(type: ItemType.vegetable, value: 'Potato'));
      },
      expect: () => [
        Data<Item, ItemType>.loading(),
        Data<Item, ItemType>(
          data: Item(type: ItemType.fruit, value: 'Apple'),
        ),
        Data<Item, ItemType>(
          data: Item(type: ItemType.vegetable, value: 'Potato'),
        ),
      ],
    );

    blocTest<DataCubit<Item, ItemType>, Data<Item, ItemType>>(
      'emits an error state when loader function throws',
      build: () => DataCubit<Item, ItemType>(
        ([ItemType? _]) => throw error,
      ),
      act: (cubit) async {
        try {
          await cubit.load();
        } catch (_) {}
      },
      expect: () => [
        Data<Item, ItemType>.loading(),
        Data<Item, ItemType>.error(error: error),
      ],
    );

    blocTest<DataCubit<List<Item>, ItemType>, Data<List<Item>, ItemType>>(
      'emits an emty state when loader function returns null or empty',
      build: () => DataCubit<List<Item>, ItemType>(
        ([ItemType? _]) async => [],
      ),
      act: (cubit) => cubit.load(),
      expect: () => [
        Data<List<Item>, ItemType>.loading(),
        Data<List<Item>, ItemType>.empty(),
      ],
    );
  });
}
