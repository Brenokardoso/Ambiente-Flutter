// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:exercicios/src/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key});

  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
