// ignore_for_file: prefer_const_constructors, annotate_overrides, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_projeto_3/home.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Main",
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}
