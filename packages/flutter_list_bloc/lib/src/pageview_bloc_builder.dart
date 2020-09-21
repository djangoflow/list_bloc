import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

class PageViewBlocBuilder<T, F> extends StatefulWidget {
  final PaginatedBloc<T, F> bloc;

  final Widget Function(BuildContext, DataState<ListPage<T>, F> state)
      headerBuilder;
  final Widget Function(BuildContext, DataState<ListPage<T>, F> state)
      footerBuilder;
  final Widget Function(BuildContext, DataState<ListPage<T>, F> state)
      pageBuilder;
  final Widget Function(BuildContext, DataState<ListPage<T>, F> state)
      emptyBuilder;
  final void Function(BuildContext, DataState<ListPage<T>, F> state, int index)
      onPageChanged;

  PageViewBlocBuilder(
      {this.bloc,
      this.headerBuilder,
      this.footerBuilder,
      this.pageBuilder,
      this.onPageChanged,
      this.emptyBuilder});

  @override
  State<StatefulWidget> createState() => _PageViewBlocBuilderState<T, F>();
}

class _PageViewBlocBuilderState<T, F> extends State<PageViewBlocBuilder<T, F>> {
  PaginatedBloc<T, F> get _bloc => widget.bloc;
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaginatedBloc<T, F>, DataState<ListPage<T>, F>>(
        cubit: _bloc,
        listenWhen: (prev, next) =>
            prev.data?.number != next.data?.number &&
            _pageController.page != next.data?.number,
        listener: (context, state) {
          _pageController.jumpToPage(state.data.number);
        },
        builder: (context, state) {
          List<Widget> children = [];

          if (widget.headerBuilder != null)
            children.add(widget.headerBuilder(context, state));

          if (state.data?.data?.isEmpty ?? true) {
            children.add(
                Expanded(child: widget.emptyBuilder(context, _bloc.state)));
          } else {
            children.add(Expanded(
                child: PageView.builder(
                    onPageChanged: (index) =>
                        widget.onPageChanged(context, _bloc.state, index),
                    controller: _pageController,
                    itemCount: _bloc.state.data.pages,
                    itemBuilder: (context, index) =>
                        widget.pageBuilder(context, _bloc.state))));
          }

          if (widget.footerBuilder != null)
            children.add(widget.footerBuilder(context, state));

          return Column(children: children);
        });
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }
}
