import 'package:flutter/material.dart' hide Page;
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

class ContinuousListViewBlocBuilder<B extends ListCubit<T, F>, T,
    F extends OffsetLimitFilter> extends StatelessWidget {
  final Axis scrollDirection;
  final B Function(BuildContext context)? create;
  final B? cubit;
  final ListItemBuilder<T, F> itemBuilder;
  final ListStateBuilder<T, F> emptyBuilder;
  final ListStateBuilder<T, F> loadingBuilder;
  final ListStateBuilder<T, F>? headerBuilder;
  final ListErrorStateBuilder<T, F>? errorBuilder;
  final Function(BuildContext context, ScrollController controller,
      Widget Function(BuildContext, int) itemBuilder, int itemCount)? builder;
  final ScrollController? controller;
  final bool shrinkWrap;
  final bool withRefreshIndicator;
  final int loadingItemsCount;
  final ScrollPhysics? physics;
  final bool reverse;

  const ContinuousListViewBlocBuilder({
    this.cubit,
    required this.emptyBuilder,
    required this.itemBuilder,
    required this.loadingBuilder,
    this.errorBuilder,
    this.builder,
    this.controller,
    this.create,
    this.headerBuilder,
    this.loadingItemsCount = 3,
    this.physics = const AlwaysScrollableScrollPhysics(),
    this.scrollDirection = Axis.vertical,
    this.shrinkWrap = true,
    this.withRefreshIndicator = false,
    this.reverse = false,
  });

  @override
  Widget build(BuildContext context) => ListBlocBuilder<B, T, F>(
        create: create,
        cubit: cubit,
        emptyBuilder: emptyBuilder,
        headerBuilder: headerBuilder,
        itemBuilder: itemBuilder,
        errorBuilder: errorBuilder,
        loadingBuilder: loadingBuilder,
        loadingItemsCount: loadingItemsCount,
        withRefreshIndicator: withRefreshIndicator,
        builder: (BuildContext context, Data<List<T>, F> state, int itemCount,
                Widget Function(BuildContext, int) itemBuilder) =>
            ContinuousScrollBuilder<B, T, F>(
          cubit: cubit,
          controller: controller,
          builder: (context, controller) => builder != null
              ? builder!(context, controller, itemBuilder, itemCount)
              : ListView.builder(
                  scrollDirection: scrollDirection,
                  shrinkWrap: shrinkWrap,
                  controller: controller,
                  primary: false,
                  physics: physics,
                  itemCount: itemCount,
                  itemBuilder: itemBuilder,
                  reverse: reverse,
                ),
        ),
      );
}
