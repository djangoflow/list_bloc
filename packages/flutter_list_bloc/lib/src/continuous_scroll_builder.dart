import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

class ContinuousScrollBuilder<B extends ListCubit<T, F>, T, F extends OffsetLimitFilter>
    extends StatefulWidget {
  /// [ContinuousScrollBuilder] handles building a scroll view based on state of [ListCubit].
  /// When view is  scrolled to the end, [ListCubit.load] is called to fetch more data

  /// Specify the [cubit], otherwise [ContinuousScrollBuilder] will automatically
  /// perform a lookup using [BlocProvider] and the current [BuildContext].
  const ContinuousScrollBuilder({
    required this.builder,
    this.cubit,
    this.controller,
    this.loadMoreScrollThreshold,
  });

  final B? cubit;

  /// [builder] function wraps items into scroll view (for ex. [ListView] or [SingleChildScrollView])
  /// and provides [controller] in param
  final Widget Function(BuildContext context, ScrollController controller) builder;

  /// Specify the [controller] to pass it to the [builder]
  /// otherwise new [ScrollController] will be created
  final ScrollController? controller;

  /// The threshold in pixels from the bottom of the list when the next page should be loaded.
  final double? loadMoreScrollThreshold;

  @override
  State<ContinuousScrollBuilder<B, T, F>> createState() => _ContinuousScrollBuilderState<B, T, F>();
}

class _ContinuousScrollBuilderState<B extends ListCubit<T, F>, T, F extends OffsetLimitFilter>
    extends State<ContinuousScrollBuilder<B, T, F>> {
  late B _cubit;
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = (widget.controller ?? ScrollController())..addListener(_scrollListener);
    _cubit = widget.cubit ?? context.read<B>();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    if (widget.controller == null) {
      _scrollController.dispose();
    }
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.extentAfter < (widget.loadMoreScrollThreshold ?? 10)) {
      final offset = _cubit.state.data?.length ?? 0;
      var filter = _cubit.state.filter;
      print(filter);
      print(offset);
      if ((filter?.offset ?? 0) < offset) {
        _cubit.append(filter?.copyWithOffset(offset) as F);
      }
    }
  }

  @override
  Widget build(BuildContext context) => widget.builder(context, _scrollController);
}
