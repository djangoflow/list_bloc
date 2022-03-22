import 'package:flutter/material.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

class ContinuousListViewBlocBuilder<T, F extends OffsetLimitFilter>
    extends StatefulWidget {
  final ContinuousListCubit<T, F>? cubit;

  final Widget Function(BuildContext, Data<List<T>, F> state) loadingBuilder;
  final Widget Function(BuildContext, Data<List<T>, F> state, int index, T item)
      itemBuilder;
  final Widget Function(BuildContext, Data<List<T>, F> state) emptyBuilder;
  final Axis scrollDirection;
  final ScrollController? controller;
  final ContinuousListCubit<T, F> Function(BuildContext context)? create;
  final bool withRefreshIndicator;
  final bool shrinkWrap;
  final Widget Function(BuildContext, Data<List<T>, F> state)? headerBuilder;
  final int loadingItemsCount;
  final ScrollPhysics? physics;

  const ContinuousListViewBlocBuilder({
    this.cubit,
    required this.itemBuilder,
    required this.loadingBuilder,
    required this.emptyBuilder,
    this.controller,
    this.create,
    this.withRefreshIndicator = true,
    this.shrinkWrap = false,
    this.headerBuilder,
    this.loadingItemsCount = 3,
    this.scrollDirection = Axis.vertical,
    this.physics,
  }) : assert((cubit != null) != (create != null));

  @override
  State<ContinuousListViewBlocBuilder<T, F>> createState() =>
      _ContinuousListViewBlocBuilderState<T, F>();
}

class _ContinuousListViewBlocBuilderState<T, F extends OffsetLimitFilter>
    extends State<ContinuousListViewBlocBuilder<T, F>> {
  late ContinuousListCubit<T, F> _cubit;
  late ScrollController _scrollController;

  @override
  void initState() {
    _cubit = widget.cubit ?? widget.create!.call(context);
    _scrollController = (widget.controller ?? ScrollController())
      ..addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    if (widget.controller == null) {
      _scrollController.dispose();
    }
    if (widget.cubit == null) {
      _cubit.close();
    }
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.extentAfter < 10) {
      final offset = _cubit.state.data?.length ?? 0;
      var filter = _cubit.state.filter;
      if ((filter?.offset ?? 0) < offset) {
        _cubit.load(filter?.copyWithOffset(offset) as F);
      }
    }
  }

  @override
  Widget build(BuildContext context) => ListViewBlocBuilder(
        cubit: _cubit,
        itemBuilder: widget.itemBuilder,
        loadingBuilder: widget.loadingBuilder,
        loadingItemsCount: widget.loadingItemsCount,
        emptyBuilder: widget.emptyBuilder,
        controller: _scrollController,
        shrinkWrap: widget.shrinkWrap,
        headerBuilder: widget.headerBuilder,
        withRefreshIndicator: widget.withRefreshIndicator,
        scrollDirection: widget.scrollDirection,
        physics: widget.physics,
      );
}
