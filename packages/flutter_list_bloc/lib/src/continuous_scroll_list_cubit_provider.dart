import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

class ContinuousScrollListCubitProvider<T, F extends OffsetLimitFilter>
    extends StatefulWidget {
  final ListCubit<T, F>? cubit;
  final Widget child;
  final ScrollController? controller;
  final ListCubit<T, F> Function(BuildContext context)? create;

  const ContinuousScrollListCubitProvider({
    required this.child,
    this.cubit,
    this.controller,
    this.create,
  }) : assert((cubit != null) != (create != null));

  @override
  State<ContinuousScrollListCubitProvider<T, F>> createState() =>
      _ContinuousScrollListCubitProviderState<T, F>();
}

class _ContinuousScrollListCubitProviderState<T, F extends OffsetLimitFilter>
    extends State<ContinuousScrollListCubitProvider<T, F>> {
  late ListCubit<T, F> _cubit;
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
        _cubit.append(filter?.copyWithOffset(offset) as F);
      }
    }
  }

  @override
  Widget build(BuildContext context) =>
      BlocProvider.value(value: _cubit, child: widget.child);
}
