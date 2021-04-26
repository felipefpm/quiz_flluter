// import 'package:FlutterQuiz/home/home_page.dart';
// import 'package:FlutterQuiz/splash/splash_page.dart';
import 'package:FlutterQuiz/challenge/challenge_page.dart';
import 'package:FlutterQuiz/home/home_page.dart';
import 'package:FlutterQuiz/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterQuiz",
      home: HomePage(),
    );
  }
}
