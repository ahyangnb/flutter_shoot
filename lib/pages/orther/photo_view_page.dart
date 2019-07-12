import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewPage extends StatefulWidget {
  @override
  _PhotoViewPageState createState() => _PhotoViewPageState();
}

class _PhotoViewPageState extends State<PhotoViewPage> {
  @override
  Widget build(BuildContext context) {
    return PhotoView(
      imageProvider: NetworkImage(
        'https://pic4.zhimg.com/v2-b29a04ad7f1e05c94c0e69b3c009d69e_1200x500.jpg',
      ),
      maxScale: 3.0,
      minScale: 0.5,
    );
  }
}
