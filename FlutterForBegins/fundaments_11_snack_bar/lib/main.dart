// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fundaments_11_snack_bar/src/home.dart';

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
      title: "MyOrganizedApp",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
