import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './Storage.dart';
import './Todotype.dart';
import './Page1.dart';
import './page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const String _title = 'Workshop flutter';
  DataBase db = DataBase();

  @override
  void initState() {
    super.initState();
    initDB();
  }

  Future<void> initDB() async {
    await db.init();
    await db.cleanAll();
    await db
        .insertItem(Todo(title: "Step 0.5", desc: "Display a task", done: 1));
    await db
        .insertItem(Todo(title: "Step 1", desc: "Display a to list", done: 1));
    await db.insertItem(
        Todo(title: "Step 2", desc: "Display a list from an API", done: 1));
    await db.insertItem(
        Todo(title: "Step 2.5", desc: "Show a loading indicator", done: 0));
    await db.insertItem(Todo(title: "Step 3", desc: "Add a button to create tasks", done: 0));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: NavBarApp(db: db),
    );
  }
}

class NavBarApp extends StatefulWidget {
  final DataBase db;

  NavBarApp({Key key, @required this.db}) : super(key: key);

  @override
  _NavBarAppState createState() => _NavBarAppState();
}

class _NavBarAppState extends State<NavBarApp> {
  int _selectedIndex = 0;

  @override
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      Page1Widget(widget.db),
      Page2Widget(),
    ];
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Todo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Image',
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 32,
        onTap: _onItemTapped,
      ),
    );
  }
}