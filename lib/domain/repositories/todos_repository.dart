import 'package:flutter_todos/domain/entities/todo_entity.dart';

// CONTRACT = INTERFACE
abstract class TodosRepository {
  Future<List<TodoEntity>> getTodos();

  //Future<String> getTodoById();
}

// FUTURES (async y await)

// Use Case para GetTodos
// class GetTodosUseCase {
//   final TodosRepository repository;

//   GetTodosUseCase({required this.repository});

//   Future<dynamic> call() async {
//     return await repository.getTodos();
//   }
// }

// class GetTodoByIdUseCase {
//   final TodosRepository repository;

//   GetTodoByIdUseCase({required this.repository});

//   Future<dynamic> call() async {
//     return await repository.getTodoById();
//   }
// }
