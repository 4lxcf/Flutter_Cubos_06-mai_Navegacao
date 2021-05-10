import 'package:flutter/material.dart';
import 'package:navigation/routes.dart';
import 'package:navigation/screens/fourth_screen.dart';
import 'package:navigation/screens/home_screen.dart';
import 'package:navigation/screens/second_screen.dart';
import 'package:navigation/screens/third_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        Routes.HOME: (ctx) => HomeScreen(),
        Routes.SECOND: (ctx) => SecondScreen(),
        Routes.THIRD: (ctx) => ThirdScreen(),
        Routes.FOURTH: (ctx) => FourthScreen(),
      },
    );
  }
}
