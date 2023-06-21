import 'package:flutter/material.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:list_bloc/list_bloc.dart';

import 'helpers/item.dart';

void main() {
  group('ListViewBlocBuilder', () {
    late ListCubit<Item, ItemType> listCubit;
    late ListViewBlocBuilder<ListCubit<Item, ItemType>, Item, ItemType>
        listViewBlocBuilder;

    setUp(() {
      listCubit = ListCubit<Item, ItemType>(([ItemType? filter]) async => []);

      listViewBlocBuilder =
          ListViewBlocBuilder<ListCubit<Item, ItemType>, Item, ItemType>(
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

    group('Empty State', () {
      testWidgets(
        'should display empty state when no items are available',
        (WidgetTester tester) async {
          listCubit.emit(Data.empty());

          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: listViewBlocBuilder,
              ),
            ),
          );

          expect(find.text('No items found.'), findsOneWidget);
          expect(find.text('Failed to fetch data.'), findsNothing);
          expect(find.byType(CircularProgressIndicator), findsNothing);
          expect(find.byType(ListTile), findsNothing);
        },
      );
    });

    group('Error State', () {
      testWidgets(
        'should display error builder when an error occurs',
        (WidgetTester tester) async {
          listCubit.emit(Data.error());

          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: listViewBlocBuilder,
              ),
            ),
          );

          expect(find.text('Failed to fetch data.'), findsOneWidget);
          expect(find.text('No items found.'), findsNothing);
          expect(find.byType(CircularProgressIndicator), findsNothing);
          expect(find.byType(ListTile), findsNothing);
        },
      );
    });

    group('Loading State', () {
      testWidgets(
        'should display loading indicator while data is being fetched',
        (WidgetTester tester) async {
          listCubit.emit(Data.loading());

          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: listViewBlocBuilder,
              ),
            ),
          );

          expect(find.byType(CircularProgressIndicator), findsWidgets);
          expect(find.text('No items found.'), findsNothing);
          expect(find.text('Failed to fetch data.'), findsNothing);
          expect(find.byType(ListTile), findsNothing);
        },
      );
    });

    group('Data State', () {
      testWidgets(
        'should display list items when data is available',
        (WidgetTester tester) async {
          listCubit.emit(
            Data<List<Item>, ItemType>(
              data: [
                Item(type: ItemType.fruit, value: 'Apple'),
                Item(type: ItemType.vegetable, value: 'Potato')
              ],
            ),
          );

          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: listViewBlocBuilder,
              ),
            ),
          );

          expect(find.text('Apple'), findsOneWidget);
          expect(find.text('Potato'), findsOneWidget);
          expect(find.text('No items found.'), findsNothing);
          expect(find.text('Failed to fetch data.'), findsNothing);
          expect(find.byType(CircularProgressIndicator), findsNothing);
        },
      );
    });

    tearDown(() => listCubit.close());
  });
}
