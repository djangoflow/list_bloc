import 'package:flutter/material.dart' hide Page;
import 'package:list_bloc/list_bloc.dart';

import 'list_bloc_builder.dart';
import 'types.dart';

class ListViewBlocBuilder<B extends ListCubit<T, F>, T, F>
    extends StatelessWidget {
  final Axis scrollDirection;
  final B Function(BuildContext context)? create;
  final B? cubit;
  final ListItemBuilder<T, F> itemBuilder;
  final ListStateBuilder<T, F> emptyBuilder;
  final ListStateBuilder<T, F> loadingBuilder;
  final ListStateBuilder<T, F>? headerBuilder;
  final ListErrorStateBuilder<T, F>? errorBuilder;
  final ScrollController? controller;
  final bool shrinkWrap;
  final bool withRefreshIndicator;
  final int loadingItemsCount;
  final ScrollPhysics? physics;
  final bool reverse;

  const ListViewBlocBuilder({
    this.cubit,
    required this.emptyBuilder,
    required this.itemBuilder,
    required this.loadingBuilder,
    this.errorBuilder,
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
        loadingBuilder: loadingBuilder,
        loadingItemsCount: loadingItemsCount,
        errorBuilder: errorBuilder,
        withRefreshIndicator: withRefreshIndicator,
        builder: (BuildContext context, Data<List<T>, F> state, int itemCount,
                Widget Function(BuildContext, int) itemBuilder) =>
            ListView.builder(
          scrollDirection: scrollDirection,
          shrinkWrap: shrinkWrap,
          controller: controller,
          primary: false,
          physics: physics,
          itemCount: itemCount,
          itemBuilder: itemBuilder,
          reverse: reverse,
        ),
      );
}
