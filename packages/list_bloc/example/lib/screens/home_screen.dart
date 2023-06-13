import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';
import 'package:list_bloc_example/models/post.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListCubit Example'),
      ),
      body: Center(
        child: RefreshIndicator(
          onRefresh: _reloadData,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 16),
              BlocBuilder<ListCubit<Post, String>, Data<List<Post>, String>>(
                builder: (context, state) {
                  return state.when(
                    (data, filter) {
                      return Expanded(
                        child: ListView.builder(
                          itemCount: state.data!.length,
                          itemBuilder: (context, index) {
                            final item = state.data![index];
                            return Dismissible(
                              key: ObjectKey(item.id),
                              direction: DismissDirection.endToStart,
                              onDismissed: (direction) {
                                _removeItem(item);
                              },
                              background: Container(
                                color: Colors.red,
                                alignment: Alignment.centerRight,
                                padding: const EdgeInsets.only(right: 16),
                                child: const Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                              ),
                              child: ListTile(
                                title: Text(item.title),
                                subtitle: Text(item.body),
                              ),
                            );
                          },
                        ),
                      );
                    },
                    loading: (_, __) {
                      return const Center(child: CircularProgressIndicator());
                    },
                    empty: (_, __) {
                      return const Text('Empty');
                    },
                    error: (_, error, __) {
                      return Text(error ?? "Error Occurred");
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addItem(),
        child: const Icon(Icons.add),
      ),
    );
  }

  /// Fetches the data from Api
  Future<void> _loadData() async {
    final listCubit = context.read<ListCubit<Post, String>>();
    await listCubit.load();
  }

  /// Refreshes the Cubit with original Api data
  Future<void> _reloadData() {
    final listCubit = context.read<ListCubit<Post, String>>();
    return listCubit.reload();
  }

  /// Remove the item from Cubit. Can be extend to Api as well.
  Future<void> _removeItem(Post item) async {
    final listCubit = context.read<ListCubit<Post, String>>();
    await listCubit.remove(item);
  }

  /// Add the item to Cubit. Can be extend to Api as well.
  Future<void> _addItem() async {
    final listCubit = context.read<ListCubit<Post, String>>();
    listCubit.add(Post(
      id: listCubit.state.data?.length ?? 0,
      title: 'New Post',
      body: 'Random Body',
    ));
  }
}
