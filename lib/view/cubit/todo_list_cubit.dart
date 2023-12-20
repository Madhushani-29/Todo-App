import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/view/models/todo_model.dart';

class TodoListCubit extends Cubit<List<Todo>> {
  TodoListCubit() : super([]);
  void addTodo(String text) {
    if (text.isEmpty){
      addError("Todo title can not be blank.");
      return;
    }
    final todo = Todo(
      title: text, 
      createdAt: DateTime.now()
    );
    //list of data with
    emit([...state, todo]);
  }

  @override
  void onChange(Change<List<Todo>> change) {
    super.onChange(change);
    print('Todo Cubit- $change');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print('Todo Cubit error- $error');
  }
}
