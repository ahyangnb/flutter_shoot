import 'package:flutter/material.dart';

import 'package:flutter_shoot/util/tools.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title',
      home: Scaffold(
        appBar: AppBar(
          title: Text('1'),
        ),
        body: Center(
          child: Text('1'),
        ),
      ),
    );
  }
}
