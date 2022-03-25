import 'package:flutter/material.dart';
import 'package:flutter_fundamental/drawer.dart';
import 'package:flutter_fundamental/tutorial/custom_widget.dart';
import 'package:flutter_fundamental/tutorial/gesture_detector.dart';
import 'package:flutter_fundamental/tutorial/learning_path_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Fundamental',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Fundamental')),
        drawer: DrawerWidget(),
        body: Center(
            child: Text('Belajar Fundamental Flutter',
                style: TextStyle(fontSize: 20))),
      ),
    );
  }
}
