import 'package:flutter/material.dart';
import 'package:flutter_todos/data/repositories_impl/todos_repository_impl.dart';
import 'package:flutter_todos/domain/repositories/todos_repository.dart';
import 'package:flutter_todos/ui/providers/counter_provider.dart';
import 'package:flutter_todos/ui/providers/todos_provider.dart';
import 'package:flutter_todos/ui/screens/home_screen.dart';
import 'package:flutter_todos/ui/screens/todos_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // Proveer Counter Provider al contexto general
        ChangeNotifierProvider<CounterProvider>(
          create: (context) => CounterProvider(),
        ),

        // Proveer TodosRepository al contexto general
        Provider<TodosRepository>(create: (context) => TodosRepositoryImpl()),

        // Proveer TodosProvider junto con TodosRepository al contexto general
        ChangeNotifierProvider<TodosProvider>(
          create: (context) => TodosProvider(context.read<TodosRepository>()),
        ),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TodosScreen(),
    );
  }
}
