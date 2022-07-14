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
  late PetDataBloc _bloc;
  bool deleting = false;
  @override
  void initState() {
    _bloc = PetDataBloc(PetRepository.read)
      ..load(PetReadFilter(petId: widget.petId));
    super.initState();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Details'),
      ),
      body: DataBlocBuilder<Pet, PetReadFilter>(
        cubit: _bloc,
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
                    child: TextField(
                      decoration: const InputDecoration(
                        label: Text('Update Name'),
                        hintText: 'Doggo',
                      ),
                      onSubmitted: (v) {
                        _bloc.updateObject(
                            body: pet.rebuild((p0) => p0.name = v));
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: deleting
                        ? CircularProgressIndicator()
                        : ElevatedButton(
                            child: const Text('Delete'),
                            onPressed: () async {
                              try {
                                setState(() {
                                  deleting = true;
                                });
                                await _bloc.delete(petId: widget.petId);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Deleted'),
                                  ),
                                );
                              } catch (e) {
                                ScaffoldMessenger.of(context).showSnackBar(
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
    );
  }
}
