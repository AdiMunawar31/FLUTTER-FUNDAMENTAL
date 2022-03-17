import 'package:flutter/material.dart';
import 'package:flutter_fundamental/tutorial/gesture_detector.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Fundamental',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: GestureDetect(),
    );
  }
}
