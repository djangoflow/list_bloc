import 'package:flutter/material.dart';
import 'package:list_bloc/list_bloc.dart';

import 'list_bloc_builder.dart';
import 'types.dart';

class SliverListBlocBuilder<T, F> extends StatelessWidget {
  final ListCubit<T, F> Function(BuildContext context)? create;
  final ListCubit<T, F>? cubit;
  final ListItemBuilder<T, F> itemBuilder;
  final ListStateBuilder<T, F> emptyBuilder;
  final ListStateBuilder<T, F> loadingBuilder;
  final ListStateBuilder<T, F>? headerBuilder;
  final int loadingItemsCount;

  const SliverListBlocBuilder({
    required this.emptyBuilder,
    required this.itemBuilder,
    required this.loadingBuilder,
    this.create,
    this.cubit,
    this.headerBuilder,
    this.loadingItemsCount = 3,
  }) : assert((cubit != null) != (create != null));

  @override
  Widget build(BuildContext context) => ListBlocBuilder(
        emptyBuilder: emptyBuilder,
        itemBuilder: itemBuilder,
        loadingBuilder: loadingBuilder,
        create: create,
        cubit: cubit,
        headerBuilder: headerBuilder,
        loadingItemsCount: loadingItemsCount,
        builder: (BuildContext context, Data<List<T>, F> state, int itemCount,
                Widget Function(BuildContext, int) itemBuilder) =>
            SliverList(
          delegate: SliverChildBuilderDelegate(
            itemBuilder,
            childCount: itemCount,
          ),
        ),
      );
}
