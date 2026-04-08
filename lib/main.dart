import 'package:flutter/material.dart';
import 'package:flutter_todos/ui/providers/counter_provider.dart';
import 'package:flutter_todos/ui/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<CounterProvider>(
      create: (_) => CounterProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
