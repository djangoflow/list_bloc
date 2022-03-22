import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';
import 'package:flutter/material.dart';

class ContinuousListViewBlocBuilder<T, F> extends StatelessWidget {
  final ListCubit<T, F>? cubit;

  final Widget Function(BuildContext, Data<List<T>, F> state) loadingBuilder;
  final Widget Function(BuildContext, Data<List<T>, F> state, int index, T item)
      itemBuilder;
  final Widget Function(BuildContext, Data<List<T>, F> state) emptyBuilder;
  final Axis scrollDirection;
  final ListCubit<T, F> Function(BuildContext context)? create;

  ContinuousListViewBlocBuilder(
      {this.cubit,
      required this.itemBuilder,
      required this.loadingBuilder,
      required this.emptyBuilder,
      this.create,
      this.scrollDirection = Axis.vertical})
      : assert((cubit != null) != (create != null));

  @override
  Widget build(BuildContext context) {
    final child = BlocBuilder<ListCubit<T, F>, Data<List<T>, F>>(
      bloc: cubit,
      builder: (context, state) {
        if (state is Loading && (state.data?.isEmpty ?? true)) {
          return loadingBuilder(context, state);
        }
        if (state.data is Empty || (state.data?.isEmpty ?? true)) {
          return emptyBuilder(context, state);
        }
        return ListView.builder(
            scrollDirection: scrollDirection,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) =>
                itemBuilder(context, state, index, state.data![index]!),
            itemCount: state.data!.length);
      },
    );
    return create != null ? BlocProvider(create: create!, child: child) : child;
  }
}
