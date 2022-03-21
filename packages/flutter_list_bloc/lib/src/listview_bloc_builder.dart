import 'package:flutter/material.dart' hide Page;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

class ListViewBlocBuilder<T, F> extends StatelessWidget {
  final PaginatedCubit<T, F> cubit;

  final Widget Function(BuildContext, Data<Page<T>, F> state) loadingBuilder;
  final Widget Function(BuildContext, Data<Page<T>, F> state, int index, T item)
  itemBuilder;
  final Widget Function(BuildContext, Data<Page<T>, F> state) emptyBuilder;
  final Axis scrollDirection;

  ListViewBlocBuilder({
    required this.cubit,
    required this.itemBuilder,
    required this.loadingBuilder,
    required this.emptyBuilder,
    this.scrollDirection = Axis.vertical
  });

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<PaginatedCubit<T, F>, Data<Page<T>, F>>(
          bloc: cubit,
          builder: (context, state) {
            if (state is Loading && (state.data?.data?.isEmpty ?? true)) {
              return loadingBuilder(context, state);
            }
            if (state.data is Empty || (state.data?.data?.isEmpty ?? true)) {
              return emptyBuilder(context, state);
            }
            return SizedBox(
              height: 300, // Constrain height.
              child:
              ListView.builder(
                  scrollDirection: scrollDirection,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) =>
                      itemBuilder(
                          context, state, index,
                          state.data!.data![index]!),
                  itemCount: state.data?.count),
            );
          }
      );
}
