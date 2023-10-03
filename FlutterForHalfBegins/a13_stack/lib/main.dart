// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

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
      title: "",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 227, 227),
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
            width: 300,
            height: 300,
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.pink,
          ),
          Container(
            width: 75,
            height: 75,
            color: Colors.yellow,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 40,
              height: 40,
              color: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}
