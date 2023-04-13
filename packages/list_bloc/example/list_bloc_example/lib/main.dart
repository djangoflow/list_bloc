import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart';
import 'item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Cubit Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) {
          final listCubit = ListCubit<Item, void>(([_]) async {
            await Future.delayed(const Duration(seconds: 2));
            return [
              Item(title: 'Item 1'),
              Item(title: 'Item 2'),
              Item(title: 'Item 3'),
            ];
          });
          listCubit.load();
          return listCubit;
        },
        child: const MyHomePage(title: 'ListCubit example'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final TextEditingController _textEditingController = TextEditingController();

  void _addItem() {
    context
        .read<ListCubit<Item, void>>()
        .add(Item(title: _textEditingController.text.isNotEmpty ? _textEditingController.text : 'default'));
    _textEditingController.clear();
  }

  void _removeItem(Item item) {
    context.read<ListCubit<Item, void>>().remove(item);
  }

  void _replaceItem(Item oldItem, String newItemTitle) {
    context.read<ListCubit<Item, void>>().replace(oldItem, Item(title: newItemTitle));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: 'Enter item title',
                suffixIcon: IconButton(
                  onPressed: _addItem,
                  icon: const Icon(Icons.add),
                ),
              ),
              onSubmitted: (_) => _addItem(),
            ),
          ),
          Expanded(
            child: BlocBuilder<ListCubit<Item, void>, Data<List<Item>, void>>(
              builder: (context, state) {
                if (state is Loading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is Error) {
                  return const Center(child: Text('An error occurred!'));
                } else if (state is Empty) {
                  return const Center(child: Text('No items found!'));
                }

                return ListView.builder(
                  itemCount: context.watch<ListCubit<Item, void>>().state.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    Item item = context.watch<ListCubit<Item, void>>().state.data![index];
                    return ListTile(
                      title: Text(item.title),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () => _replaceItem(item, '${item.title} (edited)'),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => _removeItem(item),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
