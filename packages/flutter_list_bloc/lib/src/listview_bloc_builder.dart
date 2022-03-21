import 'package:flutter/material.dart' hide Page;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

class ListViewBlocBuilder<T, F> extends StatelessWidget {
  final PaginatedCubit<T, F>? cubit;

  final Widget Function(BuildContext, Data<Page<T>, F> state)? headerBuilder;
  final Widget Function(BuildContext, Data<Page<T>, F> state)? footerBuilder;
  final Widget Function(BuildContext, Data<Page<T>, F> state) loadingBuilder;
  final Widget Function(BuildContext, Data<Page<T>, F> state, int index, T item)
  itemBuilder;
  final Widget Function(BuildContext, Data<Page<T>, F> state) emptyBuilder;

  ListViewBlocBuilder({this.cubit,
    this.headerBuilder,
    this.footerBuilder,
    required this.itemBuilder,
    required this.loadingBuilder,
    required this.emptyBuilder});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaginatedCubit<T, F>, Data<Page<T>, F>>(
      bloc: cubit,
      builder: (context, state) =>
          Column(
            children: [
              if (headerBuilder != null) headerBuilder!.call(context, state),
              if (state is Loading && (state.data?.data?.isEmpty ?? true))
                loadingBuilder(context, state)
              else
                if (state.data is Empty)
                  Expanded(child: emptyBuilder(context, state))
                else
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) =>
                          itemBuilder(
                              context, state, index, state.data!.data![index]!),
                      itemCount: state.data?.count),
              if (footerBuilder != null) footerBuilder!.call(context, state),
            ],
          ),
    );
  }
}
