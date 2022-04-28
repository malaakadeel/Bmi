import 'package:bmicalculator/views/bmiScreen_View.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator/views/loginView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: BMIview(),
    );
  }
}


