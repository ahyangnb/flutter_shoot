import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:camera/camera.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> run() async {
    final cameras = await availableCameras();

    final firstCamera = cameras.first;

    return firstCamera;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        centerTitle: true,
      ),
    );
  }
}

class TakePictureScreen extends StatefulWidget {
  final CameraDescription camera;

  TakePictureScreen(this.camera);

  @override
  _TakePictureScreenState createState() => _TakePictureScreenState();
}

class _TakePictureScreenState extends State<TakePictureScreen> {
  CameraController _cameraC;

  Future<void> _ini;

  @override
  void initState() {
    super.initState();
    _cameraC = CameraController(
      widget.camera,
      ResolutionPreset.low,
      enableAudio: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
