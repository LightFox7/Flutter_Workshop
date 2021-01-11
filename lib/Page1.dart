import 'package:flutter/material.dart';

import './Todotype.dart';
import './Storage.dart';
// Page for the steps 0.5 to 3

class Page1Widget extends StatelessWidget {
  final DataBase db;

  Page1Widget(this.db);

  @override
  Widget build(BuildContext context) {
    return TodoList(db);
  }
}

class TodoList extends StatelessWidget {
  final Todo _firstTodo = Todo(
      title: "Step 0.5", desc: "Display a task", done: 1);
  final List<Todo> _todoItems = [
    Todo(title: "Step 0.5", desc: "Display a task", done: 1),
    Todo(title: "Step 1", desc: "Display a to list", done: 1),
    Todo(title: "Step 2", desc: "Display a list from a database", done: 0),
    Todo(title: "Step 2.5", desc: "Show a loading indicator", done: 0),
    Todo(title: "Step 3", desc: "Add a button to create tasks", done: 0)
  ];
  final DataBase db;

  TodoList(this.db);

  Widget _buildTodo(todo) {
    return ListTile(
      title: new Text(todo.title != null ? todo.title : "Untitled"),
      subtitle: new Text(todo.desc != null ? todo.desc : "Untitled"),
      trailing: (todo.done != null && todo.done != 0)
          ? Text(
        "DONE",
        style:
        TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
      )
          : Text(
        "TO DO",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
      ),
    );
  }

  Widget _buildTodoList(list) {
    // Step 1
    // the Center is a placeholder, you can delete it without worry
    return Center();
  }

  @override
  Widget build(BuildContext context) {
    // Step 0.5, 1, 2, and 3
    // the Center is a placeholder, you can delete it without worry
    return Center();
  }
}
