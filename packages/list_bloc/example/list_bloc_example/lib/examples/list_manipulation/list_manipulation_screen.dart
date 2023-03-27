import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc/list_bloc.dart' as list_bloc;
import 'package:list_bloc_example/examples/list_manipulation/bloc/TodoListCubit.dart';
import 'package:list_bloc_example/examples/list_manipulation/model/todo_filter.dart';
import 'package:list_bloc_example/examples/list_manipulation/model/todo_item.dart';
import 'package:list_bloc_example/examples/list_manipulation/model/todo_status.dart';

class ListManipulationScreen extends StatefulWidget {
  const ListManipulationScreen({Key? key}) : super(key: key);

  @override
  State<ListManipulationScreen> createState() => _ListManipulationScreenState();
}

class _ListManipulationScreenState extends State<ListManipulationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: _onAddItem,
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<TodoListCubit,
          list_bloc.Data<List<TodoItem>, TodoFilter>>(
        builder: (context, state) {
          if (state is list_bloc.Loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is list_bloc.Empty || ((state.data ?? []).isEmpty)) {
            return const Center(
              child: Text("No Items Available !"),
            );
          }
          if (state is list_bloc.Error) {
            return const Center(
              child: Text("Something Happened !\nPlease try again later."),
            );
          }

          final items = state.data ?? [];
          return ListView.builder(
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (_, index) => _TodoItemWidget(
              item: items[index],
              onPressed: () => _onEditItem(items[index]),
              onDelete: () => context.read<TodoListCubit>().remove(
                    items[index],
                  ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _onAddItem() async {
    final bloc = context.read<TodoListCubit>();
    final res = await _AddTodoItemSheet.showAddTodoItemSheet(
      context,
    );

    if (res != null) {
      bloc.add(res);
    }
  }

  Future<void> _onEditItem(TodoItem item) async {
    final bloc = context.read<TodoListCubit>();
    final res = await _AddTodoItemSheet.showAddTodoItemSheet(
      context,
      item: item,
    );

    if (res != null) {
      bloc.replace(
        oldItem: item,
        newItem: res,
      );
    }
  }
}

class _TodoItemWidget extends StatelessWidget {
  const _TodoItemWidget({
    required this.item,
    required this.onPressed,
    required this.onDelete,
  });

  final TodoItem item;
  final VoidCallback onPressed;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.red,
      ),
      onDismissed: (DismissDirection direction) => onDelete(),
      child: ListTile(
        onTap: onPressed,
        title: Text(
          item.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          decoration: BoxDecoration(
            color: item.status.backgroundColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            item.status.name,
            style: TextStyle(
              color: item.status.color,
            ),
          ),
        ),
      ),
    );
  }
}

class _AddTodoItemSheet extends StatefulWidget {
  const _AddTodoItemSheet({
    Key? key,
    this.item,
  }) : super(key: key);

  final TodoItem? item;

  static Future<TodoItem?> showAddTodoItemSheet(
    BuildContext context, {
    TodoItem? item,
  }) async {
    final res = await showModalBottomSheet(
      context: context,
      builder: (_) => _AddTodoItemSheet(
        item: item,
      ),
    );

    if (res is TodoItem) {
      return res;
    }
    return null;
  }

  @override
  State<_AddTodoItemSheet> createState() => _AddTodoItemSheetState();
}

class _AddTodoItemSheetState extends State<_AddTodoItemSheet> {
  final _formKey = GlobalKey<FormState>();

  late final _titleController = TextEditingController(
    text: widget.item?.title,
  );
  late final _statusNotifier = ValueNotifier(widget.item?.status);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _titleController,
              decoration: const InputDecoration(
                label: Text("Title"),
              ),
              validator: (txt) {
                if (txt?.isNotEmpty ?? false) {
                  return null;
                }

                return "Required";
              },
            ),
            const SizedBox(
              height: 12,
            ),
            ValueListenableBuilder(
              valueListenable: _statusNotifier,
              builder: (_, status, __) => DropdownButtonFormField(
                value: status,
                items: TodoStatus.values
                    .map(
                      (s) => DropdownMenuItem(
                        value: s,
                        child: Text(s.name.toUpperCase()),
                      ),
                    )
                    .toList(),
                onChanged: (selected) {
                  _statusNotifier.value = selected;
                },
                validator: (status) {
                  if (status == null) {
                    return "Required";
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pop(
                    context,
                    TodoItem(
                      title: _titleController.text,
                      status: _statusNotifier.value!,
                    ),
                  );
                }
              },
              child: Text(
                widget.item != null ? "Update" : "Add",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
