import 'package:flutter/material.dart' hide Page;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

class ListViewBlocBuilder<T, F> extends StatelessWidget {
  final ListCubit<T, F>? cubit;

  final Widget Function(BuildContext, Data<List<T>, F> state) loadingBuilder;
  final Widget Function(BuildContext, Data<List<T>, F> state, int index, T item)
      itemBuilder;
  final Widget Function(BuildContext, Data<List<T>, F> state) emptyBuilder;
  final Axis scrollDirection;
  final ScrollController? controller;
  final ListCubit<T, F> Function(BuildContext context)? create;
  final bool withRefreshIndicator;
  final bool shrinkWrap;
  final int loadingItemsCount;

  const ListViewBlocBuilder(
      {this.cubit,
      required this.itemBuilder,
      required this.loadingBuilder,
      required this.emptyBuilder,
      this.controller,
      this.create,
      this.withRefreshIndicator = false,
        this.shrinkWrap = true,
        this.loadingItemsCount = 3,
      this.scrollDirection = Axis.vertical})
      : assert((cubit != null) != (create != null));

  @override
  Widget build(BuildContext context) {
    final child = BlocBuilder<ListCubit<T, F>, Data<List<T>, F>>(
      bloc: cubit,
      builder: (context, state) {
        final isEmpty = state is! Loading && (state.data?.length ?? 0) == 0;
        final itemCount = isEmpty
            ? 1
            : state is Loading
                ? (state.data?.length ?? 0) + loadingItemsCount
                : (state.data?.length ?? 0);
        final child = ListView.builder(
          scrollDirection: scrollDirection,
          shrinkWrap: shrinkWrap,
          controller: controller,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            if (isEmpty) return emptyBuilder(context, state);
            if (state is Loading && index >= itemCount - loadingItemsCount - 1)
              return loadingBuilder(context, state);
            return itemBuilder(context, state, index, state.data![index]!);
          },
          itemCount: itemCount,
        );
        return withRefreshIndicator
            ? RefreshIndicator(
                child: child,
                onRefresh: () async {
                  return await context.read<ListCubit<T, F>>().load();
                })
            : child;
      },
    );
    return create != null ? BlocProvider(create: create!, child: child) : child;
  }
}
