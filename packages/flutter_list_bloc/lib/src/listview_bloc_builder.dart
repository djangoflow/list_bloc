import 'package:flutter/material.dart' hide Page;
import 'package:list_bloc/list_bloc.dart';

import 'list_bloc_builder.dart';
import 'types.dart';

class ListViewBlocBuilder<B extends ListCubit<T, F>, T, F> extends StatelessWidget {
  /// [ListViewBlocBuilder] handles building a scrollable [ListView] based on state of [ListCubit].

  /// Specify the [cubit] or [create], otherwise [ListViewBlocBuilder] will automatically
  /// perform a lookup using [BlocProvider] and the current [BuildContext].
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

  final Axis scrollDirection;
  final B Function(BuildContext context)? create;
  final B? cubit;

  /// [itemBuilder] will be invoked for each item of the list
  /// and passed to [ListView.builder]
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

  /// Correspons to [ListView] properties
  final ScrollController? controller;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final bool reverse;

  final int loadingItemsCount;

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
        builder: (
          BuildContext context,
          Data<List<T>, F> state,
          int itemCount,
          Widget Function(BuildContext, int) itemBuilder,
        ) =>
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
