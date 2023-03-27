import 'package:equatable/equatable.dart';
import 'package:list_bloc_example/examples/list_manipulation/model/todo_status.dart';

class TodoItem extends Equatable {
  final String title;
  final TodoStatus status;

  const TodoItem({
    required this.title,
    this.status = TodoStatus.pending,
  });

  @override
  List<Object?> get props => [title,  status];

  TodoItem copyWith({
    String? title,
    TodoStatus? status,
  }) =>
      TodoItem(
        title: title ?? this.title,
        status: status ?? this.status,
      );
}
