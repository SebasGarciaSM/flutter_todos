import 'package:flutter/material.dart';
import 'package:flutter_todos/ui/providers/todos_provider.dart';
import 'package:provider/provider.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Acceder a Todos Provider desde el Contexto
    final todosProvider = context.watch<TodosProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos Screen"),
      ),
      body: FutureBuilder(
        future: todosProvider.fetchTodos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }

          if (snapshot.hasData) {
            // RecyclerView -> XML
            // LazyColumn -> Jetpack Compose

            // ListView (se utiliza normalmente para widget predefinidos)
            // ListView.builder (se utiliza para cargar de manera LAZY elementos DINAMICOS)

            // LazyColumn{
            //   items(todos){ todo ->
            //    ListTile(title: Text(todo.title))
            //   }
            // }

            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                final todo = snapshot.data?[index];
                return ListTile(
                  title: Text(todo!.title),
                  leading: Text(todo.id.toString()),
                  onTap: () {},
                );
              },
            );
          }

          return Container();
        },
      ),
    );
  }
}
