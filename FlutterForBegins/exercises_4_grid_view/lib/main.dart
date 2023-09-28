// ignore_for_file: prefer_const_constructors

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
      title: "Titulo",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        backgroundColor: Colors.deepOrange[400],
      ),
      body: GridView.count(
        crossAxisCount: 8,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
            
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}
