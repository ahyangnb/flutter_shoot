import 'package:flutter/material.dart';

import 'package:flutter_shoot/util/tools.dart';

class MyApp extends StatelessWidget {
  final random = new Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title',
      home: Scaffold(
        appBar: AppBar(
          title: Text('1'),
          elevation: 0,
        ),
        body: Text('1')
      ),
    );
  }
}
