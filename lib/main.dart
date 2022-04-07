import 'package:flutter/material.dart';
import 'package:flutter_fundamental/drawer.dart';

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
          appBar: AppBar(title: Text('Hello')),
          drawer: DrawerWidget(),
          body: Center(
              child: Text('Hello World', style: TextStyle(fontSize: 20)))),
    );
  }
}
