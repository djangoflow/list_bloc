import 'package:flutter/material.dart' hide Page;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

import 'types.dart';

class DataBlocBuilder<B extends DataCubit<T, F>, T, F> extends StatelessWidget {
  /// [DataBlocBuilder] handles building a scrollable [ListView] based on state of [ListCubit].

  /// Specify the [cubit] or [create], otherwise [DataBlocBuilder] will automatically
  /// perform a lookup using [BlocProvider] and the current [BuildContext].
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
  final B Function(BuildContext context)? create;
  final B? cubit;

  /// [itemBuilder] will be invoked for each change of [Data]
  final DataItemBuilder<T, F> itemBuilder;

  /// [emptyBuilder] will be called when [Data] is empty
  final DataStateBuilder<T, F> emptyBuilder;

  /// [loadingBuilder] will be called when [Data] is [Data.loading]
  final DataStateBuilder<T, F> loadingBuilder;

  /// [errorBuilder] will be called when [Data] is [Data.error]
  final DataErrorStateBuilder<T, F>? errorBuilder;

  /// When [withRefreshIndicator] is true
  /// Then [builder] is wrapper into [RefreshIndicator] widget
  final bool withRefreshIndicator;

  /// [builder] function wraps content into container
  /// Use [itemBuilder] param to build content for wrapping
  final Widget Function(
    BuildContext context,
    Data<T, F> state,
    Widget Function(BuildContext context) itemBuilder,
  ) builder;

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
