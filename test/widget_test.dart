import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test Title',
      home: Scaffold(
        appBar: AppBar(
          title: Text('test demo'),
        ),
        body: Center(
          child: Text('test body'),
        ),
      ),
    );
  }
}
