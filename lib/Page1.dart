import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// Page for the steps 0.5 to 2.5

class Todo {
  final String title;
  final bool completed;

  Todo({this.title, this.completed});

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      title: json['title'],
      completed: json['completed'],
    );
  }
}

class Page1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TodoList();
  }
}

class TodoList extends StatelessWidget {
  final Todo _firstTodo = Todo(title: "Display a todo", completed: true);
  final List<Todo> _todoItems = [
    Todo(title: "Display a todo", completed: true),
    Todo(title: "Display a todo list", completed: true),
    Todo(title: "Display a todo list fetched from the internet", completed: false),
  ];

  Future<List<Todo>> _getTodoList() async {
    final response =
        await http.get("https://jsonplaceholder.typicode.com/todos");
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body) as List;
      List<Todo> todos = data.map((todojson) => (Todo.fromJson(todojson))).toList();
      return todos;
    } else {
      return [];
    }
  }

  Widget _buildTodo(todo) {
    return ListTile(
      title: new Text(todo.title),
      subtitle: todo.completed
          ? Text(
              "DONE",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
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
    // Step 0.5, 1, 2 and 2.5
    // the Center is a placeholder, you can delete it without worry
    return Center();
  }
}
