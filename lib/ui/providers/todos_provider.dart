import 'package:flutter/foundation.dart';
import 'package:flutter_todos/domain/entities/todo_entity.dart';
import 'package:flutter_todos/domain/repositories/todos_repository.dart';

class TodosProvider extends ChangeNotifier {
  final TodosRepository repository;
  TodosProvider(this.repository);

  /// class TodosViewModel(repository: TodosRepository) : ViewModel() {
  ///
  /// }

  // List<TodoEntity> _todos = []; // Setter
  // List<TodoEntity> get todos => _todos; // Getter

  Future<List<TodoEntity>> fetchTodos() async {
    return await repository.getTodos();
  }
}
