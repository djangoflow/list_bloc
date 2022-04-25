import 'package:flutter/material.dart' hide Page;
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

class ContinuousListViewBlocBuilder<T, F extends OffsetLimitFilter>
    extends StatelessWidget {
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
  final bool reverse;
  final EdgeInsetsGeometry? padding;
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;
  final String? restorationId;

  const ContinuousListViewBlocBuilder({
    this.cubit,
    required this.emptyBuilder,
    required this.itemBuilder,
    required this.loadingBuilder,
    this.controller,
    this.create,
    this.headerBuilder,
    this.loadingItemsCount = 3,
    this.physics = const AlwaysScrollableScrollPhysics(),
    this.scrollDirection = Axis.vertical,
    this.shrinkWrap = true,
    this.withRefreshIndicator = false,
    this.reverse = false,
    this.padding,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    this.restorationId,
  });

  @override
  Widget build(BuildContext context) => ListBlocBuilder<T, F>(
        create: create,
        cubit: cubit,
        emptyBuilder: emptyBuilder,
        headerBuilder: headerBuilder,
        itemBuilder: itemBuilder,
        loadingBuilder: loadingBuilder,
        loadingItemsCount: loadingItemsCount,
        withRefreshIndicator: withRefreshIndicator,
        builder: (BuildContext context, Data<List<T>, F> state, int itemCount,
                Widget Function(BuildContext, int) itemBuilder) =>
            ContinuousScrollBuilder<T, F>(
          cubit: cubit,
          controller: controller,
          builder: (context, controller) => ListView.builder(
            padding: padding,
            keyboardDismissBehavior: keyboardDismissBehavior,
            restorationId: restorationId,
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
