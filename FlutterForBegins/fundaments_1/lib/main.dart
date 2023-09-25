// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:fundaments_1/rows_columns_expanded/code_with_buttom.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      home: BotaoFlat(),
    );
  }
}

HomeDivi() {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(11, 0, 0, 0.675),
      title: Center(
        child: Text("App"),
      ),
    ),
    body: Column(
      children: [
        Container(
          height: 75,
          color: Colors.red,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 25,
                width: 25,
                color: Colors.purple,
              ),
            ),
            Expanded(
              child: Container(
                height: 25,
                width: 25,
                color: Colors.blue,
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                width: 25,
                height: 25,
                color: Colors.green,
              ),
            ),
            Expanded(
              child: Container(
                width: 25,
                height: 25,
                color: Colors.brown,
              ),
            ),
            Expanded(
              child: Container(
                width: 25,
                height: 25,
                color: Colors.cyanAccent,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
