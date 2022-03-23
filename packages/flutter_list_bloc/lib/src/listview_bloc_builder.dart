import 'package:flutter/material.dart' hide Page;
import 'package:list_bloc/list_bloc.dart';

import 'list_bloc_builder.dart';
import 'types.dart';

class ListViewBlocBuilder<T, F> extends StatelessWidget {
  final Axis scrollDirection;
  final ListCubit<T, F> Function(BuildContext context)? create;
  final ListCubit<T, F>? cubit;
  final ListItemBuilder<T, F> itemBuilder;
  final ListStateBuilder<T, F> emptyBuilder;
  final ListStateBuilder<T, F> loadingBuilder;
  final ListStateBuilder<T, F>? headerBuilder;
  final ScrollController? controller;
  final bool shrinkWrap;
  final bool withRefreshIndicator;
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
      this.physics = const AlwaysScrollableScrollPhysics()});

  @override
  Widget build(BuildContext context) => ListBlocBuilder(
        cubit: cubit,
        create: create,
        itemBuilder: itemBuilder,
        loadingBuilder: loadingBuilder,
        loadingItemsCount: loadingItemsCount,
        emptyBuilder: emptyBuilder,
        headerBuilder: headerBuilder,
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
        ),
      );
}
