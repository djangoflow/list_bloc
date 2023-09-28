import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';

typedef _ItemCubit = ListCubit<_Item, _ItemType>;
typedef _ItemState = Data<List<_Item>, _ItemType>;

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: BlocProvider<_ItemCubit>(
        create: (context) => ListCubit<_Item, _ItemType>(
          ([_ItemType? filter]) async {
            final items = [
              const _Item(type: _ItemType.fruit, value: 'Apple'),
              const _Item(type: _ItemType.vegetable, value: 'Potato'),
            ].where((item) {
              if (filter == null) return true;
              return item.type == filter;
            }).toList();

            return items;
          },
        ),
        child: const _ListBlocPage(),
      ),
    );
  }
}

class _ListBlocPage extends StatelessWidget {
  const _ListBlocPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListBloc example'),
        actions: [
          IconButton(
            onPressed: () => context.read<_ItemCubit>()
              ..clear()
              ..load(),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: BlocBuilder<_ItemCubit, _ItemState>(
        builder: (context, state) {
          if (state is Empty) {
            return const Center(
              child: Text('No items in the list'),
            );
          }

          if (state is Loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is Error) {
            return Center(
              child: Text('Error: ${(state as Error).error}'),
            );
          }

          final items = state.data ?? [];

          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];

              return ListTile(
                  title: Text(item.value),
                  subtitle: Text(item.type.name),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () async {
                          final updatedItem = await showDialog<_Item>(
                            context: context,
                            builder: (context) => _UpdateItemDialogContent(
                              item: item,
                              itemType: item.type,
                            ),
                            barrierDismissible: false,
                          );
                          if (updatedItem != null && context.mounted) {
                            context.read<_ItemCubit>().replaceLocally(
                                  (oldItem) => oldItem == item,
                                  updatedItem,
                                );
                          }
                        },
                        icon: const Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {
                          context.read<_ItemCubit>().removeLocally(item);
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ));
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final item = await showDialog<_Item>(
            context: context,
            builder: (context) => const _UpdateItemDialogContent(),
            barrierDismissible: false,
          );
          if (item != null && context.mounted) {
            context.read<_ItemCubit>().addLocally(item);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _UpdateItemDialogContent extends StatefulWidget {
  final _Item? item;
  final _ItemType? itemType;

  const _UpdateItemDialogContent({
    Key? key,
    this.item,
    this.itemType,
  }) : super(key: key);

  @override
  State<_UpdateItemDialogContent> createState() =>
      _UpdateItemDialogContentState();
}

class _UpdateItemDialogContentState extends State<_UpdateItemDialogContent> {
  final TextEditingController _itemController = TextEditingController();
  _ItemType? _itemType;

  _ItemType? get itemType => _itemType;

  set itemType(_ItemType? value) {
    setState(() {
      _itemType = value;
    });
  }

  @override
  void initState() {
    _itemController.text = widget.item?.value ?? '';
    _itemType = widget.itemType;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('${widget.item == null ? 'Add' : 'Edit'} item'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _itemController,
            decoration: const InputDecoration(labelText: 'Item value'),
            onTapOutside: (_) => FocusScope.of(context).unfocus(),
          ),
          const SizedBox(height: 16),
          DropdownButton<_ItemType>(
            value: _itemType,
            hint: const Text('Item type'),
            onChanged: (value) => _itemType = value,
            isExpanded: true,
            items: _ItemType.values
                .map(
                  (e) => DropdownMenuItem<_ItemType>(
                    value: e,
                    child: Text(e.name),
                  ),
                )
                .toList(),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: _itemType == null || _itemController.text.trim().isEmpty
              ? null
              : () {
                  final item = _Item(
                    type: _itemType ?? _ItemType.fruit,
                    value: _itemController.text,
                  );
                  Navigator.of(context).pop(item);
                },
          child: const Text('Save'),
        ),
      ],
    );
  }
}

enum _ItemType { fruit, vegetable }

class _Item {
  const _Item({
    required this.type,
    required this.value,
  });

  final _ItemType type;
  final String value;
}
