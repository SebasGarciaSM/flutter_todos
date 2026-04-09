import 'dart:convert';

import 'package:flutter_todos/data/models/todo_model.dart';
import 'package:flutter_todos/domain/entities/todo_entity.dart';
import 'package:flutter_todos/domain/repositories/todos_repository.dart';
import 'package:http/http.dart' as http;

class TodosRepositoryImpl implements TodosRepository {
  @override
  Future<List<TodoEntity>> getTodos() async {
    final url = Uri.parse("http://jsonplaceholder.typicode.com/todos");

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        // regresar data
        final List<dynamic> data = jsonDecode(response.body);
        return data
            .map((item) => TodoModel.fromJson(item).convertToTodoEntity())
            .toList();
      } else {
        throw Exception("No se pudo obtener la info");
      }
    } catch (e) {
      throw Exception(e);
    }

    // final == val
    // var == var
  }
}
