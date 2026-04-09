import 'package:flutter_todos/domain/entities/todo_entity.dart';

class TodoModel {
  int? userId;
  int id;
  String title;
  bool completed;

  TodoModel({
    this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory TodoModel.fromJson(Map<String, dynamic> json) => TodoModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    completed: json["completed"],
  );

  TodoEntity convertToTodoEntity() {
    return TodoEntity(
      userId: userId ?? 0,
      id: id,
      title: title,
      completed: completed,
    );
  }
}
