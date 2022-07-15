import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:list_bloc/list_bloc.dart';
import 'package:open_api_example/data/api_repository/api_repository.dart';
import 'package:openapi/openapi.dart';

import 'pet_details.dart';

class PetSearchScreen extends StatefulWidget {
  const PetSearchScreen({Key? key}) : super(key: key);

  @override
  State<PetSearchScreen> createState() => _PetSearchScreenState();
}

class _PetSearchScreenState extends State<PetSearchScreen> {
  late TextEditingController textEditingController;
  late PetDataBloc bloc;
  @override
  void initState() {
    bloc = PetDataBloc(PetRepository.read);
    textEditingController = TextEditingController(
      text: '1',
    );
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Search'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textEditingController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                try {
                  final petId = int.parse(textEditingController.text);
                  bloc.load(PetReadFilter(petId: petId));
                } catch (e) {
                  rethrow;
                }
              },
              child: const Text('Search by id'),
            ),
          ),
          DataBlocBuilder<PetDataBloc, Pet, PetReadFilter>(
            cubit: bloc,
            emptyBuilder: (_, __) => const Center(
              child: Text('No data'),
            ),
            loadingBuilder: (_, __) => const Center(
              child: CircularProgressIndicator(),
            ),
            itemBuilder: (context, state) => ListTile(
              key: ValueKey(state.data?.id),
              onTap: () {
                if (state.data != null && state.data!.id != null) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PetDetailsScreen(
                        petId: state.data!.id!,
                      ),
                    ),
                  );
                }
              },
              title: Text(
                  'id: ${state.data != null ? state.data!.id : 'No data'}'),
              subtitle: Text(
                  'Name: ${state.data != null ? state.data!.name : 'No data'}'),
            ),
            builder: (context, state, item) => item(context),
          ),
        ],
      ),
    );
  }
}
