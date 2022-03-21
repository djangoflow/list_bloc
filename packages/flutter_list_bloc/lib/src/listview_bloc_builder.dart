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
  final Axis scrollDirection;

  ListViewBlocBuilder({this.cubit,
    this.headerBuilder,
    this.footerBuilder,
    required this.itemBuilder,
    required this.loadingBuilder,
    required this.emptyBuilder,
    this.scrollDirection = Axis.vertical
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaginatedCubit<T, F>, Data<Page<T>, F>>(
      bloc: cubit,
      builder: (context, state) =>
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (headerBuilder != null) headerBuilder!.call(context, state),
              if (state is Loading && (state.data?.data?.isEmpty ?? true))
                loadingBuilder(context, state)
              else
                if (state.data is Empty)
                  emptyBuilder(context, state)
                else
                  // TODO(ajil): need different solution below
                  SizedBox(
                    height: 300, // Constrain height.
                    child:
                    ListView.builder(
                        scrollDirection: scrollDirection,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) =>
                            itemBuilder(
                                context, state, index,
                                state.data!.data![index]!),
                        itemCount: state.data?.count),),
              if (footerBuilder != null) footerBuilder!.call(context, state),
            ],
          ),
    );
  }
}
