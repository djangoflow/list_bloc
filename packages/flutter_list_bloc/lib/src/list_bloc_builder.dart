import 'package:flutter/material.dart' hide Page;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

import 'types.dart';

class ListBlocBuilder<B extends ListCubit<T, F>, T, F> extends StatelessWidget {
  final B Function(BuildContext context)? create;
  final B? cubit;
  final ListItemBuilder<T, F> itemBuilder;
  final ListStateBuilder<T, F> emptyBuilder;
  final ListStateBuilder<T, F> loadingBuilder;
  final ListStateBuilder<T, F>? headerBuilder;
  final ListErrorStateBuilder<T, F>? errorBuilder;
  final bool withRefreshIndicator;
  final Widget Function(
    BuildContext context,
    Data<List<T>, F> state,
    int itemCount,
    Widget Function(BuildContext context, int index) itemBuilder,
  ) builder;
  final int loadingItemsCount;

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
            // Build empty state
            if (state is Empty) {
              return emptyBuilder(context, state);
            }
            if (state is Error && errorBuilder != null) {
              return errorBuilder!(context, state as Error<List<T>, F>);
            }
            // Build trailing loading items
            if (state is Loading && index >= dataCount) {
              return loadingBuilder(context, state);
            }
            return itemBuilder(context, state, index, state.data![index]!);
          },
        );
        return withRefreshIndicator
            ? RefreshIndicator(
                child: child,
                onRefresh: cubit != null
                    ? () => _refresh(cubit!)
                    : () => _refresh(context.read<B>()),
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
    cubit.load(f);
  }
}
