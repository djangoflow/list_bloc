import 'package:flutter/material.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:list_bloc/list_bloc.dart';

import 'helpers/item.dart';

void main() {
  group('ContinuousListViewBlocBuilder', () {
    late ListCubit<Item, OffsetLimitFilter> listCubit;
    late ContinuousListViewBlocBuilder<ListCubit<Item, OffsetLimitFilter>, Item,
        OffsetLimitFilter> continuousListViewBlocBuilder;

    setUp(() {
      listCubit = ListCubit<Item, OffsetLimitFilter>(
          ([OffsetLimitFilter? filter]) async => []);

      continuousListViewBlocBuilder = ContinuousListViewBlocBuilder<
          ListCubit<Item, OffsetLimitFilter>, Item, OffsetLimitFilter>(
        cubit: listCubit,
        itemBuilder: (context, state, index, item) {
          return ListTile(
            title: Text(item.value),
          );
        },
        loadingBuilder: (context, state) {
          return Center(
            child: CircularProgressIndicator(),
          );
        },
        emptyBuilder: (context, state) {
          return Text('No items found.');
        },
        errorBuilder: (context, state) {
          return Text('Failed to fetch data.');
        },
      );
    });

    testWidgets(
      'should display empty state when no items are available',
      (WidgetTester tester) async {
        // Emit empty state
        listCubit.emit(Data.empty());

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: continuousListViewBlocBuilder,
            ),
          ),
        );

        // Verify empty state text
        expect(find.text('No items found.'), findsOneWidget);
        expect(find.text('Failed to fetch data.'), findsNothing);
        expect(find.byType(CircularProgressIndicator), findsNothing);
        expect(find.byType(ListTile), findsNothing);
      },
    );

    testWidgets(
      'should display error builder when an error occurs',
      (WidgetTester tester) async {
        // Emit error state
        listCubit.emit(Data.error());

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: continuousListViewBlocBuilder,
            ),
          ),
        );

        // Verify error state text
        expect(find.text('Failed to fetch data.'), findsOneWidget);
        expect(find.text('No items found.'), findsNothing);
        expect(find.byType(CircularProgressIndicator), findsNothing);
        expect(find.byType(ListTile), findsNothing);
      },
    );

    testWidgets(
      'should display loading indicator while data is being fetched',
      (WidgetTester tester) async {
        // Emit loading state
        listCubit.emit(Data.loading());

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: continuousListViewBlocBuilder,
            ),
          ),
        );

        // Verify loading state
        expect(find.byType(CircularProgressIndicator), findsWidgets);
        expect(find.text('No items found.'), findsNothing);
        expect(find.text('Failed to fetch data.'), findsNothing);
        expect(find.byType(ListTile), findsNothing);
      },
    );

    testWidgets(
      'should display list items when data is available',
      (WidgetTester tester) async {
        // Emit data state
        listCubit.emit(
          Data<List<Item>, OffsetLimitFilter>(
            data: [
              Item(type: ItemType.fruit, value: 'Apple'),
              Item(type: ItemType.vegetable, value: 'Potato')
            ],
          ),
        );

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: continuousListViewBlocBuilder,
            ),
          ),
        );

        // Verify list items
        expect(find.text('Apple'), findsOneWidget);
        expect(find.text('Potato'), findsOneWidget);
        expect(find.text('No items found.'), findsNothing);
      },
    );

    testWidgets(
      'should load more items when scrolling to the end of the list',
      (WidgetTester tester) async {
        Future<List<Item>> loaderFunction([OffsetLimitFilter? filter]) async {
          if (filter?.offset == 0) {
            final items = [
              Item(type: ItemType.fruit, value: 'Apple'),
              Item(type: ItemType.vegetable, value: 'Potato'),
            ];
            return items;
          } else if (filter?.offset == 2) {
            final items = [
              Item(type: ItemType.fruit, value: 'Orange'),
              Item(type: ItemType.vegetable, value: 'Spinach'),
            ];
            return items;
          }

          return [];
        }

        listCubit = ListCubit<Item, OffsetLimitFilter>(loaderFunction);
        listCubit.load(OffsetItemFilter(0, 10));

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: ContinuousListViewBlocBuilder<
                  ListCubit<Item, OffsetLimitFilter>, Item, OffsetLimitFilter>(
                cubit: listCubit,
                emptyBuilder: (context, state) {
                  return Text('No items found.');
                },
                itemBuilder: (context, state, index, item) {
                  return ListTile(
                    title: Text(item.value),
                  );
                },
                loadingBuilder: (context, state) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ),
        );

        await tester.pumpAndSettle();

        // Verify initial list items
        expect(find.text('Apple'), findsOneWidget);
        expect(find.text('Potato'), findsOneWidget);
        expect(find.text('No items found.'), findsNothing);

        // Scroll to the end of the list
        await tester.drag(find.byType(ListView), Offset(0, 500));
        listCubit.load(OffsetItemFilter(2, 20));
        await tester.pumpAndSettle();

        // Verify additional list items loaded
        expect(find.text('Orange'), findsOneWidget);
        expect(find.text('Spinach'), findsOneWidget);
      },
    );

    testWidgets(
      'should reload items when the reload method is called',
      (WidgetTester tester) async {
        // Emit initial data state
        listCubit.emit(
          Data<List<Item>, OffsetLimitFilter>(
            data: [
              Item(type: ItemType.fruit, value: 'Apple'),
              Item(type: ItemType.vegetable, value: 'Potato'),
            ],
          ),
        );

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: continuousListViewBlocBuilder,
            ),
          ),
        );

        // Verify initial list items
        expect(find.text('Apple'), findsOneWidget);
        expect(find.text('Potato'), findsOneWidget);
        expect(find.text('No items found.'), findsNothing);

        // Call the reload method
        await listCubit.reload();

        // Emit updated data state after reloading
        listCubit.emit(
          Data<List<Item>, OffsetLimitFilter>(
            data: [
              Item(type: ItemType.fruit, value: 'Orange'),
              Item(type: ItemType.vegetable, value: 'Spinach'),
            ],
          ),
        );

        await tester.pumpAndSettle();

        // Verify reloaded list items
        expect(find.text('Apple'), findsNothing);
        expect(find.text('Potato'), findsNothing);
        expect(find.text('Orange'), findsOneWidget);
        expect(find.text('Spinach'), findsOneWidget);
      },
    );
  });
}
