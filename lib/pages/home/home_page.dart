import 'package:flutter/material.dart';
import 'package:flutter_shoot/pages/orther/photo_view_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          child: Text('test'),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return PhotoViewPage();
              },
            ),
          ),
        ),
      ),
    );
  }
}
