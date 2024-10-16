import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/view/add_todo_page.dart';
import 'package:todoapp/view/cubit/todo_list_cubit.dart';
import 'package:todoapp/view/todo_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoListCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => const ToDoListPage(),
          '/add-todo': (context) => AddToDoPage()
        },
      ),
    );
  }
}


