import 'package:flutter/material.dart';
import 'package:lesson_1/screens/screen_one.dart';
import 'package:lesson_1/screens/screen_two.dart';
import 'package:lesson_1/screens/screen_three.dart';
import 'package:lesson_1/screens/screen_four.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{ // StateFullWidget
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: ScreenOne(),
      // home: ScreenTwo(),
      // home: ScreenThree(),
      home: ScreenFourth(),
    );
  }
//Text("Flutter B17")
}

