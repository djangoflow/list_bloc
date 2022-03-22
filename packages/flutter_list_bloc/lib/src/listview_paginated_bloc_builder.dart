import 'package:flutter/material.dart' hide Page;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

class ListViewPaginatedBlocBuilder<T, F> extends StatelessWidget {
  final PaginatedCubit<T, F>? cubit;

  final Widget Function(BuildContext, Data<ListPage<T>, F> state)
      loadingBuilder;
  final Widget Function(
      BuildContext, Data<ListPage<T>, F> state, int index, T item) itemBuilder;
  final Widget Function(BuildContext, Data<ListPage<T>, F> state) emptyBuilder;
  final Axis scrollDirection;
  final PaginatedCubit<T, F> Function(BuildContext context)? create;
  final ScrollPhysics? physics;

  ListViewPaginatedBlocBuilder({
    this.cubit,
    required this.itemBuilder,
    required this.loadingBuilder,
    required this.emptyBuilder,
    this.create,
    this.scrollDirection = Axis.vertical,
    this.physics,
  }) : assert((cubit != null) != (create != null));

  @override
  Widget build(BuildContext context) {
    final child = BlocBuilder<PaginatedCubit<T, F>, Data<ListPage<T>, F>>(
      bloc: cubit,
      builder: (context, state) {
        if (state is Loading && (state.data?.data?.isEmpty ?? true)) {
          return loadingBuilder(context, state);
        }
        if (state.data is Empty || (state.data?.data?.isEmpty ?? true)) {
          return emptyBuilder(context, state);
        }
        return ListView.builder(
            scrollDirection: scrollDirection,
            shrinkWrap: true,
            physics: physics,
            itemBuilder: (BuildContext context, int index) =>
                itemBuilder(context, state, index, state.data!.data![index]!),
            itemCount: state.data?.count);
      },
    );
    return create != null ? BlocProvider(create: create!, child: child) : child;
  }
}
