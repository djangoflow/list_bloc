import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

class ContinuousScrollBuilder<T, F extends OffsetLimitFilter>
    extends StatefulWidget {
  final ListCubit<T, F>? cubit;
  final Widget Function(BuildContext context, ScrollController controller)
      builder;
  final ScrollController? controller;

  const ContinuousScrollBuilder({
    required this.builder,
    this.cubit,
    this.controller,
  });

  @override
  State<ContinuousScrollBuilder<T, F>> createState() =>
      _ContinuousScrollBuilderState<T, F>();
}

class _ContinuousScrollBuilderState<T, F extends OffsetLimitFilter>
    extends State<ContinuousScrollBuilder<T, F>> {
  late ListCubit<T, F> _cubit;
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = (widget.controller ?? ScrollController())
      ..addListener(_scrollListener);
    _cubit = widget.cubit ?? context.read<ListCubit<T, F>>();
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
    if (_scrollController.position.extentAfter < 10) {
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
  Widget build(BuildContext context) =>
      widget.builder(context, _scrollController);
}
