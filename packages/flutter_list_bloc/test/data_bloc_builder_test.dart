import 'package:flutter/material.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:list_bloc/list_bloc.dart';

import 'helpers/item.dart';

void main() {
  group('DataBlocBuilder', () {
    late DataCubit<Item, ItemType> dataCubit;
    late DataBlocBuilder<DataCubit<Item, ItemType>, Item, ItemType>
        dataBlocBuilder;

    setUp(() {
      dataCubit = DataCubit<Item, ItemType>(
        ([ItemType? filtr]) async => Item(type: ItemType.fruit, value: 'Apple'),
      );

      dataBlocBuilder =
          DataBlocBuilder<DataCubit<Item, ItemType>, Item, ItemType>(
        cubit: dataCubit,
        itemBuilder: (context, state) {
          return ListTile(
            title: Text(state.data!.value),
          );
        },
        loadingBuilder: (context, state) {
          return Center(
            child: CircularProgressIndicator(),
          );
        },
        emptyBuilder: (context, state) {
          return Text('No data found.');
        },
        builder: (context, state, itemBuilder) {
          return itemBuilder(context);
        },
        errorBuilder: (context, state) {
          return Text('Failed to fetch data.');
        },
      );
    });

    testWidgets(
      'should display empty state when there is no data',
      (WidgetTester tester) async {
        // Emit empty state
        dataCubit.emit(Data.empty());

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: dataBlocBuilder,
            ),
          ),
        );

        // Verify empty state text
        expect(find.text('No data found.'), findsOneWidget);
        expect(find.text('Failed to fetch data.'), findsNothing);
        expect(find.byType(CircularProgressIndicator), findsNothing);
        expect(find.byType(ListTile), findsNothing);
      },
    );

    testWidgets(
      'should display error builder when an error occurs',
      (WidgetTester tester) async {
        // Emit error state
        dataCubit.emit(Data.error());

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: dataBlocBuilder,
            ),
          ),
        );

        // Verify error state text
        expect(find.text('Failed to fetch data.'), findsOneWidget);
        expect(find.text('No data found.'), findsNothing);
        expect(find.byType(CircularProgressIndicator), findsNothing);
        expect(find.byType(ListTile), findsNothing);
      },
    );

    testWidgets(
      'should display loading indicator while data is being fetched',
      (WidgetTester tester) async {
        // Emit loading state
        dataCubit.emit(Data.loading());

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: dataBlocBuilder,
            ),
          ),
        );

        // Verify loading state
        expect(find.byType(CircularProgressIndicator), findsOneWidget);
        expect(find.text('No data found.'), findsNothing);
        expect(find.text('Failed to fetch data.'), findsNothing);
        expect(find.byType(ListTile), findsNothing);
      },
    );

    testWidgets(
      'should display data when data is available',
      (WidgetTester tester) async {
        // Emit data state
        dataCubit.emit(
          Data(
            data: Item(type: ItemType.fruit, value: 'Apple'),
          ),
        );

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: dataBlocBuilder,
            ),
          ),
        );

        // Verify list data
        expect(find.text('Apple'), findsOneWidget);
        expect(find.text('No data found.'), findsNothing);
        expect(find.text('Failed to fetch data.'), findsNothing);
        expect(find.byType(CircularProgressIndicator), findsNothing);
      },
    );
  });
}
