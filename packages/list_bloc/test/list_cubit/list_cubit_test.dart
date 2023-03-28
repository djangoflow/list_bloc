import 'package:bloc_test/bloc_test.dart';
import 'package:list_bloc/list_bloc.dart';
import 'package:test/test.dart';

import 'helpers/todo_filter.dart';
import 'helpers/todo_item.dart';

void main() {
  group(
    'ListCubit',
    () {
      late ListCubit<TodoItem, TodoFilter> cubit;

      setUp(() {
        cubit = ListCubit<TodoItem, TodoFilter>(
          ([TodoFilter? filter]) async => [
            TodoItem(title: "1H Workout"),
          ],
        );
      });

      blocTest<ListCubit<TodoItem, TodoFilter>,
          Data<List<TodoItem>, TodoFilter>>(
        'is able to reload its data',
        build: () => cubit,
        act: (cubit) => cubit.load(),
        expect: () => [
          Data<List<TodoItem>, TodoFilter>.loading(),
          Data<List<TodoItem>, TodoFilter>(
            data: [TodoItem(title: "1H Workout")],
          ),
        ],
      );

      blocTest<ListCubit<TodoItem, TodoFilter>,
          Data<List<TodoItem>, TodoFilter>>(
        'Can add new item',
        build: () => cubit,
        act: (cubit) async {
          await cubit.load();
          cubit.add(
            TodoItem(title: "30min Launch"),
          );
        },
        expect: () => [
          Data<List<TodoItem>, TodoFilter>.loading(),
          Data<List<TodoItem>, TodoFilter>(
            data: [TodoItem(title: "1H Workout")],
          ),
          Data<List<TodoItem>, TodoFilter>.loading(
            data: [TodoItem(title: "1H Workout")],
          ),
          Data<List<TodoItem>, TodoFilter>(
            data: [
              TodoItem(title: "1H Workout"),
              TodoItem(title: "30min Launch"),
            ],
          ),
        ],
      );

      blocTest<ListCubit<TodoItem, TodoFilter>,
          Data<List<TodoItem>, TodoFilter>>(
        'Can remove item',
        build: () => cubit,
        act: (cubit) async {
          await cubit.load();
          cubit.remove(
            TodoItem(title: "1H Workout"),
          );
        },
        expect: () => [
          Data<List<TodoItem>, TodoFilter>.loading(),
          Data<List<TodoItem>, TodoFilter>(
            data: [TodoItem(title: "1H Workout")],
          ),
          Data<List<TodoItem>, TodoFilter>.loading(
            data: [TodoItem(title: "1H Workout")],
          ),
          Data<List<TodoItem>, TodoFilter>.empty(),
        ],
      );

      blocTest<ListCubit<TodoItem, TodoFilter>,
          Data<List<TodoItem>, TodoFilter>>(
        'Can replace item',
        build: () => cubit,
        act: (cubit) async {
          await cubit.load();
          cubit.add(
            TodoItem(title: "30min Launch"),
          );
          cubit.replace(
            oldItem: TodoItem(title: "30min Launch"),
            newItem: TodoItem(title: "1H Launch"),
          );
        },
        expect: () => [
          Data<List<TodoItem>, TodoFilter>.loading(),
          Data<List<TodoItem>, TodoFilter>(
            data: [TodoItem(title: "1H Workout")],
          ),
          Data<List<TodoItem>, TodoFilter>.loading(
            data: [TodoItem(title: "1H Workout")],
          ),
          Data<List<TodoItem>, TodoFilter>(
            data: [
              TodoItem(title: "1H Workout"),
              TodoItem(title: "30min Launch"),
            ],
          ),
          Data<List<TodoItem>, TodoFilter>.loading(
            data: [
              TodoItem(title: "1H Workout"),
              TodoItem(title: "30min Launch"),
            ],
          ),
          Data<List<TodoItem>, TodoFilter>(
            data: [
              TodoItem(title: "1H Workout"),
              TodoItem(title: "1H Launch"),
            ],
          ),
        ],
      );
    },
  );
}
