import 'package:example/utils/api_repository.dart';
import 'package:example/widgets/empty_indicator.dart';
import 'package:example/widgets/item_tile.dart';
import 'package:example/widgets/loading_list_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

class SliverListBlocBuilderShowcase extends StatelessWidget {
  const SliverListBlocBuilderShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverListBlocBuilder'),
      ),
      body: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Sliver Items List'),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
          ),
          SliverListBlocBuilder<ListCubit<String, String>, String, String>(
            create: (context) => ListCubit(([filter]) => ApiRepository.fetchList())..load(),
            emptyBuilder: (context, state) => const EmptyIndicator(),
            loadingBuilder: (context, state) => const LoadingListIndicator(),
            itemBuilder: (context, state, index, item) => ItemTile(item: item),
          ),
        ],
      ),
    );
  }
}
