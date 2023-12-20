import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/view/cubit/todo_list_cubit.dart';
import 'package:todoapp/view/models/todo_model.dart';

class ToDoListPage extends StatelessWidget {
  const ToDoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Todo List"),
        ),
        body: BlocBuilder<TodoListCubit, List<Todo>>(builder: (context, todos) {
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return ListTile(
                leading: const Icon(Icons.task),
                title: Text(todo.title),
                subtitle: Text(todo.createdAt.toString()),
              );
            },
          );
        }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/add-todo');
          },
          tooltip: 'Add Todo',
          child: const Icon(Icons.add),
        ));
  }
}
