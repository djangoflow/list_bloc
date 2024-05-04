import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:list_bloc/list_bloc.dart';
import 'package:mocktail/mocktail.dart';
import '../utils/empty_test_widget.dart';
import '../utils/test_app_container.dart';
import '../utils/test_item.dart';
import '../utils/test_loading_indicator.dart';

class MockFilter extends Mock implements OffsetLimitFilter {}

void main() {
  group('ContinuousScrollBuilder test', () {
    const testDataText = 'TEST DATA';

    final controller = ScrollController();

    const itemCount = 100;

    final ListCubit<String, MockFilter> cubit = ListCubit(
      ([filter]) {
        return Future.value(
          List.generate(
            itemCount,
            (index) => '$testDataText ${(index + 1) + (filter?.offset ?? 0)}',
          ),
        );
      },
    );

    final widget = ContinuousScrollBuilder<ListCubit<String, MockFilter>, String, MockFilter>(
      controller: controller,
      builder: (context, controller) =>
          ListBlocBuilder<ListCubit<String, MockFilter>, String, MockFilter>(
        loadingItemsCount: OffsetLimitFilter.kPageSize,
        itemBuilder: (context, state, index, item) => TestItem(item),
        loadingBuilder: (context, state) => const TestLoadingIndicator(),
        emptyBuilder: (context, state) => const EmptyTestWidget(),
        builder: (context, state, itemCount, itemBuilder) => ListView.builder(
          controller: controller,
          itemBuilder: itemBuilder,
          itemCount: itemCount,
        ),
      ),
    );

    testWidgets(
      'When list scrolled to the bottom, then last item should be displayed',
      (tester) async {
        final filter = MockFilter();

        when(() => filter.offset).thenAnswer((invocation) => 0);
        when(() => filter.copyWithOffset(any())).thenAnswer((invocation) => filter);

        await tester.pumpWidget(
          TestAppContainer(
            child: BlocProvider.value(
              value: cubit..load(filter),
              child: widget,
            ),
          ),
        );

        await tester.pumpAndSettle();

        controller.jumpTo(controller.position.maxScrollExtent);

        await tester.pumpAndSettle();

        expect(
          find.text('$testDataText $itemCount'),
          findsOneWidget,
        );
      },
    );

    testWidgets(
      'When list scrolled to the bottom after first page loaded, then last item should be displayed',
      (tester) async {
        final filter = MockFilter();
        final filter2 = MockFilter();

        when(() => filter.offset).thenAnswer((invocation) => 0);
        when(() => filter2.offset).thenAnswer((invocation) => itemCount);

        when(() => filter.copyWithOffset(any())).thenAnswer((invocation) => filter2);
        when(() => filter2.copyWithOffset(any())).thenAnswer((invocation) => filter2);

        await tester.pumpWidget(
          TestAppContainer(
            child: BlocProvider.value(
              value: cubit..load(filter),
              child: widget,
            ),
          ),
        );

        await tester.pumpAndSettle();

        controller.jumpTo(controller.position.maxScrollExtent);

        await tester.pumpAndSettle();

        controller.jumpTo(controller.position.maxScrollExtent);

        await tester.pumpAndSettle();

        expect(
          find.text('$testDataText ${itemCount * 2}'),
          findsOneWidget,
        );
      },
    );
    tearDownAll(controller.dispose);
  });
}
