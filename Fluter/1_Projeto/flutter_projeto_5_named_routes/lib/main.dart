// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Named Navigation",
      debugShowCheckedModeBanner: false,
      routes: {},
      home: Column(
        children: [],
      ),
    );
  }
}

class NamedTela1 extends StatelessWidget {
  const NamedTela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: Text("APP"),
        backgroundColor: Color.fromARGB(234, 251, 205, 40),
      ),
    );
  }
}
