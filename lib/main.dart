import 'package:flutter/material.dart';
import 'HorizontalContainers.dart';
import 'VerticalContainers.dart';
import 'Login.dart';
import 'getStarted.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white
      ),
      home: getStarted(),
    );
  }
}
