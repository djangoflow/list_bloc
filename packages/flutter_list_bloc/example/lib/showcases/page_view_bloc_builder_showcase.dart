import 'package:example/utils/api_repository.dart';
import 'package:example/widgets/empty_indicator.dart';
import 'package:example/widgets/item_tile.dart';
import 'package:example/widgets/loading_data_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

typedef PageViewCubit = PaginatedCubit<String, int>;

class PageViewBlocBuilderShowcase extends StatelessWidget {
  const PageViewBlocBuilderShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PageViewCubit>(
      create: (context) => PaginatedCubit<String, int>(
        ([page]) => ApiRepository.fetchPaginated(page: page ?? 0),
      ),
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('PageViewBlocBuilder'),
          ),
          body: PageViewBlocBuilder<String, int>(
            cubit: context.read<PageViewCubit>()..load(0),
            onPageChanged: (context, state, index) => context.read<PageViewCubit>().load(index),
            emptyBuilder: (context, state) => const EmptyIndicator(),
            pageBuilder: (context, state) => state.when(
              (listPage, index) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      if (index != null)
                        IconButton(
                          onPressed: index > 0
                              ? () => context.read<PageViewCubit>().load(index - 1)
                              : null,
                          icon: const Icon(Icons.arrow_back),
                        ),
                      Text(
                        'Page №$index',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      if (index != null)
                        IconButton(
                          onPressed: () => context.read<PageViewCubit>().load(index + 1),
                          icon: const Icon(Icons.arrow_forward),
                        ),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: [...?listPage?.data?.map((item) => ItemTile(item: item))],
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
              loading: (data, filter) => const LoadingDataIndicator(),
              empty: (_, __) => const EmptyIndicator(),
              error: (error, _, __) => Text('Error: $error'),
            ),
          ),
        ),
      ),
    );
  }
}
