import 'package:flutter/material.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

import '../utils/api_emulator.dart';
import '../widgets/empty_indicator.dart';
import '../widgets/item_tile.dart';
import '../widgets/loading_list_indicator.dart';

class ListBlocBuilderShowcase extends StatelessWidget {
  const ListBlocBuilderShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListBlocBuilder')),
      body: ListBlocBuilder<ListCubit<String, String>, String, String>(
        create: (context) => ListCubit<String, String>(
          ([filter]) => APIEmulator.fetchList(),
        )..load(),
        withRefreshIndicator: true,
        builder: (context, state, itemCount, itemBuilder) => ListView.builder(
          itemBuilder: itemBuilder,
          itemCount: itemCount,
        ),
        loadingItemsCount: OffsetLimitFilter.kPageSize,
        emptyBuilder: (context, _) => const EmptyIndicator(),
        itemBuilder: (context, state, index, item) => ItemTile(item: item),
        loadingBuilder: (context, state) => const LoadingListIndicator(),
      ),
    );
  }
}
