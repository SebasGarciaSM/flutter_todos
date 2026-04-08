import 'package:flutter/material.dart';
import 'package:flutter_todos/ui/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<CounterProvider>();

    //final counter = provider.counter;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TITULO"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              provider.counter.toString(),
              style: TextStyle(fontSize: 100),
            ),
            ElevatedButton(
              onPressed: () {
                provider.sumCounter();
              },
              child: Text("CLICK"),
            ),
          ],
        ),
      ),
    );
  }
}
