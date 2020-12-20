import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Page1.dart';
import 'page2.dart';

void main() {
  runApp(MyApp());
}

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {

  static const String _title = 'Workshop flutter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: NavBarApp(),
    );
  }
}

class NavBarApp extends StatefulWidget {
  NavBarApp({Key key}) : super(key: key);

  @override
  _NavBarAppState createState() => _NavBarAppState();
}

class _NavBarAppState extends State<NavBarApp> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Page1Widget(),
    Page2Widget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
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
