// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_projeto_4/home.dart';
import 'package:flutter_projeto_4/navega%C3%A7%C3%A3o_1.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyApp",
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}
