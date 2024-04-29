import 'package:example/utils/api_emulator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

import '../widgets/empty_indicator.dart';
import '../widgets/item_tile.dart';
import '../widgets/loading_data_indicator.dart';

class DataBlocBuilderShowcase extends StatelessWidget {
  const DataBlocBuilderShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DataBlocBuilder')),
      body: DataBlocBuilder<DataCubit<String, String>, String, String>(
        create: (context) => DataCubit(([filter]) => APIEmulator.fetchData())..load(),
        itemBuilder: (context, state) => ItemTile(item: state.data ?? ''),
        loadingBuilder: (context, state) => const LoadingDataIndicator(),
        emptyBuilder: (context, state) => const EmptyIndicator(),
        builder: (context, state, itemBuilder) => Center(
          child: itemBuilder(context),
        ),
      ),
    );
  }
}
