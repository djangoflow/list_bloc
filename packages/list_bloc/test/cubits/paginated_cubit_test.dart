import 'package:bloc_test/bloc_test.dart';
import 'package:list_bloc/list_bloc.dart';
import 'package:test/test.dart';

import '../helpers/item.dart';

void main() {
  group('PaginatedCubit', () {
    late PaginatedCubit<Item, ItemType> cubit;

    setUp(() {
      cubit = PaginatedCubit<Item, ItemType>(
        ([ItemType? _]) async => ListPage(
          number: 0,
          size: 2,
          data: [
            Item(type: ItemType.fruit, value: 'Apple'),
            Item(type: ItemType.vegetable, value: 'Potato'),
          ],
        ),
      );
    });

    blocTest<PaginatedCubit<Item, ItemType>, Data<ListPage<Item>, ItemType>>(
      'is able to load data asynchronously',
      build: () => cubit,
      act: (cubit) => cubit.load(),
      expect: () => [
        Data<ListPage<Item>, ItemType>.loading(),
        Data<ListPage<Item>, ItemType>(
          data: ListPage(
            number: 0,
            size: 2,
            data: [
              Item(type: ItemType.fruit, value: 'Apple'),
              Item(type: ItemType.vegetable, value: 'Potato'),
            ],
          ),
        ),
      ],
    );
  });
}
