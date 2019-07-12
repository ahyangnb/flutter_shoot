import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_shoot/pages/home/home_page.dart';
import 'package:flutter_shoot/pages/category/category_page.dart';
import 'package:flutter_shoot/pages/search/search_page.dart';
import 'package:flutter_shoot/pages/mine/mine_page.dart';

class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  List items = ['1', '2', '3', '4'];
  int _currentIndex = 0;
  var currentPages;

  List pages = [
    HomePage(),
    CategoryPage(),
    SearchPage(),
    MinePage(),
  ];

  @override
  void initState() {
    super.initState();
    currentPages = pages[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_shoot',
      home: Scaffold(
        bottomNavigationBar: Theme(
          data: ThemeData(
            brightness: Brightness.light,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            items: items.map((item) {
              return BottomNavigationBarItem(
                icon: Icon(Icons.map),
                title: Text('$item'),
              );
            }).toList(),
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                currentPages = pages[_currentIndex];
              });
            },
            type: BottomNavigationBarType.fixed,
          ),
        ),
        body: currentPages,
      ),
    );
  }
}
