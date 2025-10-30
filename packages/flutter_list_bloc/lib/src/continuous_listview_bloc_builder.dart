import 'package:flutter/material.dart' hide Page;
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

class ContinuousListViewBlocBuilder<B extends ListCubit<T, F>, T, F extends OffsetLimitFilter>
    extends StatelessWidget {
  /// [ContinuousListViewBlocBuilder] handles building a scrollable [ListView] based on state of [ListCubit].
  /// When [ListView] is scrolled to the end, [ListCubit.load] is called to fetch more data

  /// Specify the [cubit] or [create], otherwise [ListViewBlocBuilder] will automatically
  /// perform a lookup using [BlocProvider] and the current [BuildContext].
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

  final B Function(BuildContext context)? create;
  final B? cubit;

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

  /// [builder] function wraps content into container
  /// Otherwise, [ListView.builder] will be used
  final Function(
    BuildContext context,
    ScrollController controller,
    Widget Function(BuildContext, int) itemBuilder,
    int itemCount,
  )? builder;

  /// When [withRefreshIndicator] is true
  /// Then [ListView] is wrapper into [RefreshIndicator] widget
  final bool withRefreshIndicator;

  final int loadingItemsCount;

  /// Correspons to [ListView] properties
  final Axis scrollDirection;
  final ScrollController? controller;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final bool reverse;

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
