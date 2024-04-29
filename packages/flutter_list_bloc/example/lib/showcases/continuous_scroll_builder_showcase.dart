import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

import '../utils/api_emulator.dart';
import '../utils/continuous_offset_filter.dart';
import '../widgets/empty_indicator.dart';
import '../widgets/item_tile.dart';
import '../widgets/loading_list_indicator.dart';

class ContinuousScrollBuilderShowcase extends StatelessWidget {
  const ContinuousScrollBuilderShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListCubit<String, ContinuousOffsetFilter>(
        ([filter]) => APIEmulator.fetchList(
          page: filter?.page,
        ),
      )..load(ContinuousOffsetFilter()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ContinuousScrollBuilder'),
        ),
        body: ContinuousScrollBuilder<ListCubit<String, ContinuousOffsetFilter>, String,
            ContinuousOffsetFilter>(
          builder: (context, controller) => ListBlocBuilder<
              ListCubit<String, ContinuousOffsetFilter>, String, ContinuousOffsetFilter>(
            loadingItemsCount: OffsetLimitFilter.kPageSize,
            itemBuilder: (context, state, index, item) => ItemTile(item: item),
            loadingBuilder: (context, state) => const LoadingListIndicator(),
            emptyBuilder: (context, state) => const EmptyIndicator(),
            builder: (context, state, itemCount, itemBuilder) => ListView.builder(
              controller: controller,
              itemBuilder: itemBuilder,
              itemCount: itemCount,
            ),
          ),
        ),
      ),
    );
  }
}
