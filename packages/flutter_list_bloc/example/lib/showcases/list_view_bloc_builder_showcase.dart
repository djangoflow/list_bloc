import 'package:example/utils/api_emulator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

import '../widgets/empty_indicator.dart';
import '../widgets/item_tile.dart';
import '../widgets/loading_list_indicator.dart';

class ListViewBlocBuilderShowcase extends StatelessWidget {
  const ListViewBlocBuilderShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListViewBlocBuilder'),
      ),
      body: ListViewBlocBuilder<ListCubit<String, String>, String, String>(
        withRefreshIndicator: true,
        loadingItemsCount: OffsetLimitFilter.kPageSize,
        create: (context) => ListCubit(([filter]) => APIEmulator.fetchList())..load(),
        emptyBuilder: (context, state) => const EmptyIndicator(),
        itemBuilder: (context, state, index, item) => ItemTile(item: item),
        loadingBuilder: (context, state) => const LoadingListIndicator(),
      ),
    );
  }
}
