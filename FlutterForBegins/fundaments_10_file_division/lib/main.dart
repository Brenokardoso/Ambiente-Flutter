// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fundaments_10_file_division/src/home.dart';

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
