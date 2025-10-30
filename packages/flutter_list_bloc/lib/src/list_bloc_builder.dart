import 'package:flutter/material.dart' hide Page;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

import 'types.dart';

class ListBlocBuilder<B extends ListCubit<T, F>, T, F> extends StatelessWidget {
  /// [ListBlocBuilder] handles building a widget based on state of [ListCubit].

  /// Specify the [cubit] or [create], otherwise [ListBlocBuilder] will automatically
  /// perform a lookup using [BlocProvider] and the current [BuildContext].
  const ListBlocBuilder({
    this.cubit,
    required this.itemBuilder,
    required this.loadingBuilder,
    required this.emptyBuilder,
    required this.builder,
    this.errorBuilder,
    this.create,
    this.loadingItemsCount = 3,
    this.withRefreshIndicator = false,
    this.headerBuilder,
  });

  final B Function(BuildContext context)? create;

  final B? cubit;

  /// [itemBuilder] will be invoked for each item of the list
  /// and passed to [builder]
  final ListItemBuilder<T, F> itemBuilder;

  /// [emptyBuilder] will be called when list of items is empty
  final ListStateBuilder<T, F> emptyBuilder;

  /// [loadingBuilder] will be called [loadingItemsCount] times.
  /// Use it for single item placeholder.
  final ListStateBuilder<T, F> loadingBuilder;

  /// [headerBuilder] will be used to build first item in the list
  final ListStateBuilder<T, F>? headerBuilder;

  // TODO: Currently it replaces any old states with empty state
  // It can be enhaced in future to support if there was data state before empty state then to show it
  // else show error state conditionally.

  /// [errorBuilder] will be called for [Data.error] state
  final ListErrorStateBuilder<T, F>? errorBuilder;

  /// When [withRefreshIndicator] is true
  /// Then [builder] is wrapper into [RefreshIndicator] widget
  final bool withRefreshIndicator;

  /// [builder] function wraps items into scroll view (for ex. [ListView] or [SingleChildScrollView])
  /// Use [itemBuilder] param to pass it build list item
  final Widget Function(
    BuildContext context,
    Data<List<T>, F> state,
    int itemCount,
    Widget Function(BuildContext context, int index) itemBuilder,
  ) builder;
  final int loadingItemsCount;

  @override
  Widget build(BuildContext context) {
    final child = BlocBuilder<B, Data<List<T>, F>>(
      bloc: cubit,
      builder: (context, state) {
        final dataCount = (state.data?.length ?? 0);
        final itemCount = (headerBuilder != null ? 1 : 0) +
            (state is Empty ? 1 : 0) +
            (state is Error ? 1 : 0) +
            (state is Loading ? loadingItemsCount : 0) +
            dataCount;
        final child = builder(
          context,
          state,
          itemCount,
          (BuildContext context, int index) {
            // Build header
            if (headerBuilder != null) {
              if (index == 0) {
                return headerBuilder!(context, state);
              }
              index -= 1;
            }

            if (state is Error && errorBuilder != null) {
              return errorBuilder!(context, state as Error<List<T>, F>);
            }
            // Build trailing loading items
            if (state is Loading && index >= dataCount) {
              return loadingBuilder(context, state);
            }
            // Build empty state
            if (state is Empty || state.data == null) {
              return emptyBuilder(context, state);
            }
            return itemBuilder(context, state, index, state.data![index]!);
          },
        );
        return withRefreshIndicator
            ? RefreshIndicator(
                child: child,
                onRefresh:
                    cubit != null ? () => _refresh(cubit!) : () => _refresh(context.read<B>()),
              )
            : child;
      },
    );
    return create != null ? BlocProvider(create: create!, child: child) : child;
  }

  Future<void> _refresh(B cubit) async {
    final f = cubit.state.filter is OffsetLimitFilter
        ? (cubit.state.filter as OffsetLimitFilter).copyWithOffset(0)
        : null;
    await cubit.load(f);
  }
}
