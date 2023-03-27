import 'package:list_bloc/list_bloc.dart';
import 'package:list_bloc_example/examples/list_manipulation/model/todo_filter.dart';
import 'package:list_bloc_example/examples/list_manipulation/model/todo_item.dart';

class TodoListCubit extends ListCubit<TodoItem, TodoFilter> {
  TodoListCubit() : super(_initialLoader);

  static Future<List<TodoItem>> _initialLoader([
    TodoFilter? filter,
  ]) async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      const TodoItem(
        title: "1H Workout",
      ),
      const TodoItem(
        title: "Read a book",
      ),
      const TodoItem(
        title: "Watch a movie",
      ),
    ];
  }
}
