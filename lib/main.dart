import 'package:flutter/material.dart';

import 'package:flutter_shoot/app.dart';
import 'package:flutter_shoot/util/tools.dart';

void main() {
  runApp(MyApp());

  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}
