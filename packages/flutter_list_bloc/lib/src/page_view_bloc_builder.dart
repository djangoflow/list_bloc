import 'package:flutter/material.dart' hide Page;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

class PageViewBlocBuilder<T, F> extends StatefulWidget {
  final PaginatedCubit<T, F>? cubit;

  final PageStateBuilder? headerBuilder;
  final PageStateBuilder? footerBuilder;
  final PageStateBuilder pageBuilder;
  final PageStateBuilder emptyBuilder;
  final PageStateBuilder? errorBuilder;

  final OnPageChangedBuilder? onPageChanged;

  PageViewBlocBuilder({
    this.cubit,
    this.headerBuilder,
    this.footerBuilder,
    required this.pageBuilder,
    this.onPageChanged,
    required this.emptyBuilder,
    this.errorBuilder,
  });

  @override
  State<StatefulWidget> createState() => _PageViewBlocBuilderState<T, F>();
}

class _PageViewBlocBuilderState<T, F> extends State<PageViewBlocBuilder<T, F>> {
  PaginatedCubit<T, F>? get _cubit => widget.cubit;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaginatedCubit<T, F>, Data<ListPage<T>, F>>(
        bloc: _cubit,
        listenWhen: (prev, next) =>
            prev.data?.number != next.data?.number &&
            _pageController.positions.isNotEmpty &&
            _pageController.page != next.data?.number,
        listener: (context, state) {
          _pageController.jumpToPage(state.data?.number ?? 0);
        },
        builder: (context, state) {
          List<Widget> children = [];

          if (widget.headerBuilder != null)
            children.add(widget.headerBuilder!(context, state));
          if (widget.errorBuilder != null && state is Error) {
            children.add(Expanded(
                child: widget.errorBuilder!(
                    context, state as Error<ListPage<T>, F>)));
          }
          if (state.data?.data?.isEmpty ?? true) {
            children.add(Expanded(child: widget.emptyBuilder(context, state)));
          } else {
            children.add(Expanded(
                child: PageView.builder(
                    onPageChanged: (index) => widget.onPageChanged == null
                        ? null
                        : widget.onPageChanged!(context, state, index),
                    controller: _pageController,
                    itemCount: state.data?.pages,
                    itemBuilder: (context, index) =>
                        widget.pageBuilder(context, state))));
          }

          if (widget.footerBuilder != null)
            children.add(widget.footerBuilder!(context, state));

          return Column(children: children);
        });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
