import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:list_bloc/list_bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../utils/empty_test_widget.dart';
import '../utils/test_app_container.dart';
import '../utils/test_builder_container.dart';
import '../utils/test_error_widget.dart';
import '../utils/test_filter.dart';
import '../utils/test_item.dart';
import '../utils/test_loading_indicator.dart';

class MockDataCubit<T, F> extends Mock implements DataCubit<T, F> {}

void main() {
  group('DataBlocBuilder test', () {
    late DataCubit<String, TestFilter> cubit;

    const testDataText = 'TEST DATA';
    const testErrorText = 'TEST ERROR';

    final widget = DataBlocBuilder<DataCubit<String, TestFilter>, String, TestFilter>(
      itemBuilder: (context, state) => TestItem(state.data ?? ''),
      loadingBuilder: (context, state) => const TestLoadingIndicator(),
      errorBuilder: (context, state) => TestErrorWidget(state.error ?? ''),
      emptyBuilder: (context, state) => const EmptyTestWidget(),
      builder: (context, state, itemBuilder) => TestBuilderContainer(
        child: itemBuilder(context),
      ),
    );

    final testData = Data<String, TestFilter>(
      data: testDataText,
      filter: TestFilter.filter1,
    );

    final testError = Data<String, TestFilter>.error(
      error: testErrorText,
    );

    testWidgets(
      'When Data is emitted, then widget from DataBlocBuilder.itemBuilder sould be displayed',
      (tester) async {
        cubit = MockDataCubit<String, TestFilter>();

        when(() => cubit.stream).thenAnswer((invocation) => Stream.value(testData));
        when(() => cubit.state).thenAnswer((invocation) => testData);

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
          findsOneWidget,
        );
      },
    );

    setUp(() {});

    testWidgets(
      'When Data.error is emitted, then widget from DataBlocBuilder.errorBuilder sould be displayed',
      (tester) async {
        cubit = MockDataCubit<String, TestFilter>();

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
      'When Data.loading is emitted, then widget from DataBlocBuilder.loadingBuilder sould be displayed',
      (tester) async {
        cubit = MockDataCubit<String, TestFilter>();

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
          findsOneWidget,
        );
      },
    );

    testWidgets(
      'When Data.empty is emitted, then widget from DataBlocBuilder.emptyBuilder sould be displayed',
      (tester) async {
        cubit = MockDataCubit<String, TestFilter>();

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
