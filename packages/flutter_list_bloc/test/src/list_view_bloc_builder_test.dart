import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:list_bloc/list_bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../utils/empty_test_widget.dart';
import '../utils/test_app_container.dart';
import '../utils/test_error_widget.dart';
import '../utils/test_filter.dart';
import '../utils/test_item.dart';
import '../utils/test_loading_indicator.dart';

class MockListCubit<T, F> extends Mock implements ListCubit<T, F> {}

void main() {
  group('ListViewBlocBuilder test', () {
    late ListCubit<String, TestFilter> cubit;

    const testDataText = 'TEST DATA';
    const testErrorText = 'TEST ERROR';

    const itemCount = 5;

    final testDataList = Data<List<String>, TestFilter>(
      data: List.generate(
        itemCount,
        (index) => '$testDataText',
      ),
      filter: TestFilter.filter1,
    );

    final testError = Data<List<String>, TestFilter>.error(
      error: testErrorText,
    );

    final widget = ListViewBlocBuilder<ListCubit<String, TestFilter>, String, TestFilter>(
      loadingItemsCount: itemCount,
      itemBuilder: (context, data, index, item) => TestItem(item),
      loadingBuilder: (context, state) => const TestLoadingIndicator(),
      errorBuilder: (context, state) => TestErrorWidget(state.error ?? ''),
      emptyBuilder: (context, state) => const EmptyTestWidget(),
    );

    testWidgets(
      'When Data is emitted, then widget from ListBlocBuilder.itemBuilder sould be displayed $itemCount times',
      (tester) async {
        cubit = MockListCubit<String, TestFilter>();

        when(() => cubit.stream).thenAnswer((invocation) => Stream.value(testDataList));
        when(() => cubit.state).thenAnswer((invocation) => testDataList);

        await tester.pumpWidget(
          TestAppContainer(
            child: BlocProvider.value(
              value: cubit,
              child: widget,
            ),
          ),
        );

        await tester.pumpAndSettle();

        expect(
          find.ancestor(of: find.text(testDataText), matching: find.byType(TestItem)),
          findsExactly(itemCount),
        );
      },
    );

    setUp(() {});

    testWidgets(
      'When Data.error is emitted, then widget from ListBlocBuilder.errorBuilder sould be displayed',
      (tester) async {
        cubit = MockListCubit<String, TestFilter>();

        when(() => cubit.stream).thenAnswer((invocation) => Stream.value(testError));
        when(() => cubit.state).thenAnswer((invocation) => testError);

        await tester.pumpWidget(
          TestAppContainer(
            child: BlocProvider.value(
              value: cubit,
              child: widget,
            ),
          ),
        );

        await tester.pumpAndSettle();

        expect(
          find.ancestor(of: find.text(testErrorText), matching: find.byType(TestErrorWidget)),
          findsOneWidget,
        );
      },
    );

    testWidgets(
      'When Data.loading is emitted, then widget from ListBlocBuilder.loadingBuilder sould be displayed $itemCount times',
      (tester) async {
        cubit = MockListCubit<String, TestFilter>();

        when(() => cubit.stream).thenAnswer((invocation) => Stream.value(Data.loading()));
        when(() => cubit.state).thenAnswer((invocation) => Data.loading());

        await tester.pumpWidget(
          TestAppContainer(
            child: BlocProvider.value(
              value: cubit,
              child: widget,
            ),
          ),
        );

        await tester.pumpAndSettle();

        expect(
          find.byType(TestLoadingIndicator),
          findsExactly(itemCount),
        );
      },
    );

    testWidgets(
      'When Data.empty is emitted, then widget from ListBlocBuilder.emptyBuilder sould be displayed',
      (tester) async {
        cubit = MockListCubit<String, TestFilter>();

        when(() => cubit.stream).thenAnswer((invocation) => Stream.value(Data.empty()));
        when(() => cubit.state).thenAnswer((invocation) => Data.empty());

        await tester.pumpWidget(
          TestAppContainer(
            child: BlocProvider.value(
              value: cubit,
              child: widget,
            ),
          ),
        );

        await tester.pumpAndSettle();

        expect(
          find.byType(EmptyTestWidget),
          findsOneWidget,
        );
      },
    );
  });
}
