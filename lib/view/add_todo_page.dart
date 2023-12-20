import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/view/cubit/todo_list_cubit.dart';

class AddToDoPage extends StatelessWidget {
  AddToDoPage({super.key});

  TextEditingController todoTitleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo List"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: todoTitleController,
              decoration: const InputDecoration(hintText: "Title"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<TodoListCubit>().addTodo(
                        todoTitleController.text.trim(),
                      );
                      Navigator.of(context).pop();
                },
                child: const Text("Add"))
          ],
        ),
      ),
    );
  }
}
