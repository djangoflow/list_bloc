import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_list_bloc/flutter_list_bloc.dart';
import 'package:open_api_example/data/api_repository/api_repository.dart';
import 'package:openapi/openapi.dart';

class PetDetailsScreen extends StatefulWidget {
  final int petId;
  const PetDetailsScreen({Key? key, required this.petId}) : super(key: key);

  @override
  State<PetDetailsScreen> createState() => _PetDetailsScreenState();
}

class _PetDetailsScreenState extends State<PetDetailsScreen> {
  bool deleting = false;
  bool updating = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PetDataBloc>(
      create: (context) => PetDataBloc(PetRepository.retrieve)
        ..load(PetRetrieveFilter(petId: widget.petId)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pet Details'),
        ),
        body: DataBlocBuilder<PetDataBloc, Pet, PetRetrieveFilter>(
          emptyBuilder: (_, __) => const Center(
            child: Text('No data'),
          ),
          loadingBuilder: (_, __) => const Center(
            child: CircularProgressIndicator(),
          ),
          itemBuilder: (context, state) {
            final pet = state.data;
            if (pet != null) {
              return SizedBox(
                key: ValueKey(pet.id),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('id: ${pet.id}'),
                    Text('name: ${pet.name}'),
                    Text('status: ${pet.status}'),
                    Text('photoUrls: ${pet.photoUrls}'),
                    Text('tags: ${pet.tags}'),
                    Text('category: ${pet.category}'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: updating
                          ? const LinearProgressIndicator()
                          : TextField(
                              decoration: const InputDecoration(
                                label: Text('Update Name'),
                                hintText: 'Doggo',
                              ),
                              onSubmitted: (v) async {
                                final scaffoldMessenger =
                                    ScaffoldMessenger.of(context);
                                try {
                                  setState(() {
                                    updating = true;
                                  });
                                  await context
                                      .read<PetDataBloc>()
                                      .updateObject(
                                          body:
                                              pet.rebuild((p0) => p0.name = v));
                                  scaffoldMessenger.showSnackBar(
                                    const SnackBar(
                                      content: Text('Updated'),
                                    ),
                                  );
                                } catch (e) {
                                  scaffoldMessenger.showSnackBar(
                                    const SnackBar(
                                      content: Text('Error Occurred'),
                                    ),
                                  );
                                } finally {
                                  setState(() {
                                    updating = false;
                                  });
                                }
                              },
                            ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: deleting
                          ? const CircularProgressIndicator()
                          : ElevatedButton(
                              child: const Text('Delete'),
                              onPressed: () async {
                                final scaffoldMessenger =
                                    ScaffoldMessenger.of(context);
                                try {
                                  setState(() {
                                    deleting = true;
                                  });
                                  await context
                                      .read<PetDataBloc>()
                                      .destroy(petId: widget.petId);
                                  scaffoldMessenger.showSnackBar(
                                    const SnackBar(
                                      content: Text('Deleted'),
                                    ),
                                  );
                                } catch (e) {
                                  scaffoldMessenger.showSnackBar(
                                    const SnackBar(
                                      content: Text('Error Occurred'),
                                    ),
                                  );
                                } finally {
                                  setState(() {
                                    deleting = false;
                                  });
                                }
                              }),
                    ),
                  ],
                ),
              );
            }
            return const Center(child: Text('No Data'));
          },
          builder: (context, state, item) => item(context),
        ),
      ),
    );
  }
}
