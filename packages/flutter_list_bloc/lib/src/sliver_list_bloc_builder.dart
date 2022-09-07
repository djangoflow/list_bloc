import 'package:flutter/material.dart';
import 'package:list_bloc/list_bloc.dart';

import 'list_bloc_builder.dart';
import 'types.dart';

class SliverListBlocBuilder<B extends ListCubit<T, F>, T, F>
    extends StatelessWidget {
  final B Function(BuildContext context)? create;
  final B? cubit;
  final ListItemBuilder<T, F> itemBuilder;
  final ListStateBuilder<T, F> emptyBuilder;
  final ListStateBuilder<T, F> loadingBuilder;
  final ListStateBuilder<T, F>? headerBuilder;
  final ErrorStateBuilder<T, F> errorBuilder;
  final int loadingItemsCount;
  final bool withRefreshIndicator;

  const SliverListBlocBuilder({
    required this.emptyBuilder,
    required this.itemBuilder,
    required this.loadingBuilder,
    required this.errorBuilder,
    this.create,
    this.cubit,
    this.headerBuilder,
    this.loadingItemsCount = 3,
    this.withRefreshIndicator = false,
  });

  @override
  Widget build(BuildContext context) => ListBlocBuilder<B, T, F>(
        emptyBuilder: emptyBuilder,
        itemBuilder: itemBuilder,
        loadingBuilder: loadingBuilder,
        errorBuilder: errorBuilder,
        create: create,
        cubit: cubit,
        headerBuilder: headerBuilder,
        loadingItemsCount: loadingItemsCount,
        withRefreshIndicator: withRefreshIndicator,
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
