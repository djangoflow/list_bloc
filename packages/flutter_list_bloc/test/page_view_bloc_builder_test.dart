import 'package:flutter/material.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:list_bloc/list_bloc.dart';

import 'helpers/item.dart';

void main() {
  group('PageViewBlocBuilder', () {
    late PaginatedCubit<Item, ItemType> paginatedCubit;
    late PageViewBlocBuilder<Item, ItemType> pageViewBlocBuilder;

    setUp(() {
      paginatedCubit = PaginatedCubit<Item, ItemType>(
        ([ItemType? _]) async => ListPage(
          number: 0,
          size: 0,
        ),
      );

      pageViewBlocBuilder = PageViewBlocBuilder<Item, ItemType>(
        cubit: paginatedCubit,
        pageBuilder: (context, state) {
          return ListView.builder(
            itemCount: state.data?.data?.length,
            itemBuilder: (context, index) {
              final item = state.data?.data?[index];
              return ListTile(
                title: Text(item?.value ?? ''),
              );
            },
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

    tearDown(() => paginatedCubit.close());

    testWidgets(
      'should display empty state when no items are available',
      (WidgetTester tester) async {
        paginatedCubit.emit(Data.empty());

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: pageViewBlocBuilder,
            ),
          ),
        );

        expect(find.text('No items found.'), findsOneWidget);
        expect(find.text('Failed to fetch data.'), findsNothing);
        expect(find.byType(ListTile), findsNothing);
      },
    );

    testWidgets(
      'should display error builder when an error occurs',
      (WidgetTester tester) async {
        paginatedCubit.emit(Data.error());

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: pageViewBlocBuilder,
            ),
          ),
        );

        expect(find.text('Failed to fetch data.'), findsOneWidget);
        expect(find.text('No items found.'), findsOneWidget);
        expect(find.byType(ListTile), findsNothing);
      },
    );

    testWidgets(
      'should display list items when data is available',
      (WidgetTester tester) async {
        paginatedCubit.emit(
          Data<ListPage<Item>, ItemType>(
            data: ListPage<Item>(
              number: 0,
              size: 2,
              count: 50,
              data: [
                Item(type: ItemType.fruit, value: 'Apple'),
                Item(type: ItemType.vegetable, value: 'Potato'),
              ],
            ),
          ),
        );

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: pageViewBlocBuilder,
            ),
          ),
        );

        expect(find.text('Apple'), findsOneWidget);
        expect(find.text('Potato'), findsOneWidget);
        expect(find.text('No items found.'), findsNothing);
        expect(find.text('Failed to fetch data.'), findsNothing);
      },
    );
  });
}
