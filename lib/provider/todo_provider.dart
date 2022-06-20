import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';

class TodoProvider extends ChangeNotifier {
  List<Todo> todos = [
    Todo(id: 0, title: "first todo"),
  ];

  void addTodo({required String title}) {
    todos.add(Todo(id: 0, title: title));
    notifyListeners();
  }

  void ToggleTaskStatus({required int id}) {
    var todo = todos.firstWhere((element) => element == id);
    todo.done = !todo.done;
    notifyListeners();
  }
}
