import 'package:example/utils/api_emulator.dart';
import 'package:example/utils/continuous_offset_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

import '../widgets/empty_indicator.dart';
import '../widgets/item_tile.dart';
import '../widgets/loading_list_indicator.dart';

class ContinuousListViewBlocBuilderShowcase extends StatelessWidget {
  const ContinuousListViewBlocBuilderShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContinuousListViewBlocBuilder'),
      ),
      body: ContinuousListViewBlocBuilder<ListCubit<String, ContinuousOffsetFilter>, String,
          ContinuousOffsetFilter>(
        create: (context) => ListCubit(
          ([filter]) => APIEmulator.fetchList(
            page: filter?.page,
          ),
        )..load(ContinuousOffsetFilter()),
        loadingItemsCount: OffsetLimitFilter.kPageSize,
        emptyBuilder: (context, state) => const EmptyIndicator(),
        itemBuilder: (context, state, index, item) => ItemTile(item: item),
        loadingBuilder: (context, state) => const LoadingListIndicator(),
      ),
    );
  }
}
