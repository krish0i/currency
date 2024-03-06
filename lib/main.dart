import 'package:currency/currency1.dart';
import 'package:currency/detail.dart';
import 'package:currency/home.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
          "/":(context) => Currency1(),
          "home":(context) => Home(),
          "detail1":(context) => Detail1(),
      },
    );
  }
}
