import 'package:flutter/material.dart' hide Page;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

import 'types.dart';

class DataBlocBuilder<B extends DataCubit<T, F>, T, F> extends StatelessWidget {
  final B Function(BuildContext context)? create;
  final B? cubit;
  final DataItemBuilder<T, F> itemBuilder;
  final DataStateBuilder<T, F> emptyBuilder;
  final DataStateBuilder<T, F> loadingBuilder;
  final ErrorStateBuilder<T, F>? errorBuilder;
  final bool withRefreshIndicator;

  final Widget Function(
    BuildContext context,
    Data<T, F> state,
    Widget Function(BuildContext context) itemBuilder,
  ) builder;

  const DataBlocBuilder({
    this.cubit,
    required this.itemBuilder,
    required this.loadingBuilder,
    required this.emptyBuilder,
    required this.builder,
    this.errorBuilder,
    this.create,
    this.withRefreshIndicator = false,
  });

  @override
  Widget build(BuildContext context) {
    final child = BlocBuilder<B, Data<T, F>>(
      bloc: cubit,
      builder: (context, state) {
        final child = builder(context, state, (context) {
          if (state is Loading) {
            return loadingBuilder(context, state);
          } else if (state is Empty) {
            return emptyBuilder(context, state);
          } else if (state is Error && errorBuilder != null) {
            return errorBuilder!(context, state as Error<T, F>);
          } else {
            return itemBuilder(context, state);
          }
        });

        return withRefreshIndicator
            ? RefreshIndicator(
                child: child,
                onRefresh: cubit != null
                    ? () => _refresh(cubit!)
                    : () => _refresh(context.read<DataCubit<T, F>>()),
              )
            : child;
      },
    );
    return create != null ? BlocProvider(create: create!, child: child) : child;
  }

  Future<void> _refresh(DataCubit<T, F> cubit) async {
    final f = cubit.state.filter is OffsetLimitFilter
        ? (cubit.state.filter as OffsetLimitFilter).copyWithOffset(0)
        : null;
    cubit.load(f);
  }
}
