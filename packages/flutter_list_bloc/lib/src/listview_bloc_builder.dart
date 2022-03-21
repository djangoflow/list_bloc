import 'package:flutter/material.dart' hide Page;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';


class ListViewBlocBuilder<B extends PaginatedCubit<T,F>, T, F> extends StatelessWidget {
  final B? cubit;

  final Widget Function(BuildContext, Data<Page<T>, F> state) loadingBuilder;
  final Widget Function(BuildContext, Data<Page<T>, F> state, int index, T item)
      itemBuilder;
  final Widget Function(BuildContext, Data<Page<T>, F> state) emptyBuilder;
  final Axis scrollDirection;
  final B Function(BuildContext context)? create;

  ListViewBlocBuilder(
      {this.cubit,
      required this.itemBuilder,
      required this.loadingBuilder,
      required this.emptyBuilder,
      this.create,
      this.scrollDirection = Axis.vertical});

  @override
  Widget build(BuildContext context) {
    final child = BlocBuilder<B, Data<Page<T>, F>>(
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
            child: ListView.builder(
                scrollDirection: scrollDirection,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) => itemBuilder(
                    context, state, index, state.data!.data![index]!),
                itemCount: state.data?.count),
          );
        });
    return create != null ? BlocProvider(create: create!, child: child) : child;
  }
}
