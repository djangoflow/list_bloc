import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:list_bloc/list_bloc.dart';
import '../utils/empty_test_widget.dart';
import '../utils/test_app_container.dart';
import '../utils/test_builder_container.dart';
import '../utils/test_item.dart';

void main() {
  group('PageViewBlocBuilder test', () {
    const testDataText = 'TEST DATA';

    const itemCount = 5;

    const backBtnKey = Key('back-btn');
    const forwardBtnKey = Key('forwars-btn');

    ListPage<String> testDataListForPage(int page) => ListPage(
          number: page,
          size: itemCount,
          count: itemCount,
          data: List.generate(
            itemCount,
            (index) => '$testDataText',
          ),
        );

    late PaginatedCubit<String, int> cubit = PaginatedCubit(
      ([filter]) => Future.value(
        testDataListForPage(filter ?? 0),
      ),
    );

    final widget = PageViewBlocBuilder<String, int>(
      emptyBuilder: (context, state) => const EmptyTestWidget(),
      pageBuilder: (context, state) => TestBuilderContainer(
        child: Column(
          children: [
            Row(
              children: [
                // if (state.filter != null)
                IconButton(
                  key: backBtnKey,
                  onPressed: () {
                    cubit.load((state.filter ?? 0) - 1);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                  ),
                ),
                // if (state.filter != null)
                IconButton(
                  key: forwardBtnKey,
                  onPressed: () {
                    cubit.load((state.filter ?? 0) + 1);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                  ),
                ),
              ],
            ),
            Text('Page ${state.filter}'),
            ...?state.data?.data?.map((text) => TestItem(text)),
          ],
        ),
      ),
    );

    testWidgets(
      'When first page is loaded, proper page title with items  $itemCount times  sould be displayed',
      (tester) async {
        await tester.pumpWidget(
          TestAppContainer(
            child: BlocProvider.value(
              value: cubit,
              child: widget,
            ),
          ),
        );
        await cubit.load(0);

        await tester.pumpAndSettle();

        expect(
          find.text('Page 0'),
          findsOne,
        );

        expect(
          find.ancestor(of: find.text(testDataText), matching: find.byType(TestItem)),
          findsExactly(itemCount),
        );
      },
    );

    testWidgets(
      'When user taps back, proper page title with items $itemCount times  sould be displayed',
      (tester) async {
        await tester.pumpWidget(
          TestAppContainer(
            child: BlocProvider.value(
              value: cubit,
              child: widget,
            ),
          ),
        );
        await cubit.load(1);

        await tester.pumpAndSettle();

        await tester.tap(find.byKey(backBtnKey));

        await tester.pumpAndSettle();

        expect(
          find.text('Page 0'),
          findsOne,
        );

        expect(
          find.ancestor(of: find.text(testDataText), matching: find.byType(TestItem)),
          findsExactly(itemCount),
        );
      },
    );

    testWidgets(
      'When user taps forward, proper page title with items $itemCount times  sould be displayed',
      (tester) async {
        await tester.pumpWidget(
          TestAppContainer(
            child: BlocProvider.value(
              value: cubit,
              child: widget,
            ),
          ),
        );
        await cubit.load(0);

        await tester.pumpAndSettle();

        await tester.tap(find.byKey(forwardBtnKey));

        await tester.pumpAndSettle();

        expect(
          find.text('Page 1'),
          findsOne,
        );

        expect(
          find.ancestor(of: find.text(testDataText), matching: find.byType(TestItem)),
          findsExactly(itemCount),
        );
      },
    );
    tearDownAll(cubit.close);
  });
}
