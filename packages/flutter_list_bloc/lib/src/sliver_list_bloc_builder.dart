import 'package:flutter/material.dart' hide Page;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

typedef Widget StateBuilder<T, F>(
  BuildContext context,
  Data<List<T>, F> state,
);

typedef Widget StateItemBuilder<T, F>(
  BuildContext context,
  Data<List<T>, F> state,
  int index,
  T item,
);

class SliverListBlocBuilder<T, F> extends StatelessWidget {
  final ListCubit<T, F>? cubit;

  final StateBuilder<T, F> loadingBuilder;
  final StateItemBuilder<T, F> itemBuilder;
  final StateBuilder<T, F> emptyBuilder;
  final StateBuilder<T, F>? headerBuilder;

  final ListCubit<T, F> Function(BuildContext context)? create;
  final int loadingItemsCount;

  const SliverListBlocBuilder({
    this.cubit,
    required this.itemBuilder,
    required this.loadingBuilder,
    required this.emptyBuilder,
    this.create,
    this.loadingItemsCount = 3,
    this.headerBuilder,
  }) : assert((cubit != null) != (create != null));

  @override
  Widget build(BuildContext context) {
    final child = BlocBuilder<ListCubit<T, F>, Data<List<T>, F>>(
      bloc: cubit,
      builder: (context, state) {
        final isEmpty = state is! Loading && (state.data?.length ?? 0) == 0;
        final itemCount = (headerBuilder != null ? 1 : 0) +
            (isEmpty
                ? 1
                : state is Loading
                    ? (state.data?.length ?? 0) + loadingItemsCount
                    : (state.data?.length ?? 0));

        final sliver = SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              if (headerBuilder != null && index == 0) {
                return headerBuilder!(context, state);
              }
              final i = index - (headerBuilder != null ? 1 : 0);
              if (isEmpty) return emptyBuilder(context, state);
              if (state is Loading && i >= itemCount - loadingItemsCount - 1) {
                return loadingBuilder(context, state);
              }
              return itemBuilder(context, state, i, state.data![i]!);
            },
            childCount: itemCount,
          ),
        );
        return sliver;
      },
    );
    return create != null ? BlocProvider(create: create!, child: child) : child;
  }
}
