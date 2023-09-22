  // ignore_for_file: prefer_const_constructors, annotate_overrides, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_projeto_4/NavigatorRodrigoHamal/home.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyAppRoute",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
