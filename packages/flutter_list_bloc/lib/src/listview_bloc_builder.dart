import 'package:flutter/material.dart' hide Page;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

class ListViewBlocBuilder<T, F> extends StatelessWidget {
  final ListCubit<T, F>? cubit;

  final Widget Function(BuildContext, Data<List<T>, F> state) loadingBuilder;
  final Widget Function(BuildContext, Data<List<T>, F> state, int index, T item)
      itemBuilder;
  final Widget Function(BuildContext, Data<List<T>, F> state) emptyBuilder;
  final Widget Function(BuildContext, Data<List<T>, F> state)? headerBuilder;
  final Axis scrollDirection;
  final ScrollController? controller;
  final ListCubit<T, F> Function(BuildContext context)? create;
  final bool withRefreshIndicator;
  final bool shrinkWrap;
  final int loadingItemsCount;
  final ScrollPhysics? physics;

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
      this.headerBuilder,
      this.scrollDirection = Axis.vertical,
      this.physics = const AlwaysScrollableScrollPhysics()})
      : assert((cubit != null) != (create != null));

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
        final child = ListView.builder(
          scrollDirection: scrollDirection,
          shrinkWrap: shrinkWrap,
          controller: controller,
          primary: false,
          physics: physics,
          itemBuilder: (BuildContext context, int index) {
            if (headerBuilder != null && index == 0)
              return headerBuilder!(context, state);
            final i = index - (headerBuilder != null ? 1 : 0);
            if (isEmpty) return emptyBuilder(context, state);
            if (state is Loading && i >= itemCount - loadingItemsCount - 1)
              return loadingBuilder(context, state);
            return itemBuilder(context, state, i, state.data![i]!);
          },
          itemCount: itemCount,
        );
        return withRefreshIndicator
            ? RefreshIndicator(
                child: child,
                onRefresh: cubit != null
                    ? cubit!.load
                    : context.read<ListCubit<T, F>>().load,
              )
            : child;
      },
    );
    return create != null ? BlocProvider(create: create!, child: child) : child;
  }
}
