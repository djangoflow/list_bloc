import 'package:flutter/material.dart';
import 'package:list_bloc/list_bloc.dart';

import 'list_bloc_builder.dart';
import 'types.dart';

class SliverListBlocBuilder<B extends ListCubit<T, F>, T, F> extends StatelessWidget {
  /// [SliverListBlocBuilder] handles building a [SliverList] based on state of [ListCubit].

  /// Specify the [cubit] or [create], otherwise [SliverListBlocBuilder] will automatically
  /// perform a lookup using [BlocProvider] and the current [BuildContext].
  const SliverListBlocBuilder({
    required this.emptyBuilder,
    required this.itemBuilder,
    required this.loadingBuilder,
    this.errorBuilder,
    this.create,
    this.cubit,
    this.headerBuilder,
    this.loadingItemsCount = 3,
    this.withRefreshIndicator = false,
  });

  final B Function(BuildContext context)? create;
  final B? cubit;

  /// [itemBuilder] will be invoked for each item of the list
  /// and passed to [SliverList.builder]
  final ListItemBuilder<T, F> itemBuilder;

  /// [emptyBuilder] will be called when list of items is empty
  final ListStateBuilder<T, F> emptyBuilder;

  /// [loadingBuilder] will be called [loadingItemsCount] times.
  /// Use it for single item placeholder.
  final ListStateBuilder<T, F> loadingBuilder;

  /// [headerBuilder] will be used to build first item in the list
  final ListStateBuilder<T, F>? headerBuilder;

  /// [errorBuilder] will be called for [Data.error] state
  final ListErrorStateBuilder<T, F>? errorBuilder;

  /// When [withRefreshIndicator] is true,
  /// then [ListView] is wrapper into [RefreshIndicator] widget
  final bool withRefreshIndicator;

  final int loadingItemsCount;

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
