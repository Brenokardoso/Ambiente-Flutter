// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

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
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[600],
        appBar: AppBar(
          title: Text("AppBar"),
          backgroundColor: Colors.blueAccent[700],
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "Titulo Legal",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink,
                ),
              ),
              Container(
                child: Icon(
                  Icons.star,
                  size: 40,
                  color: Colors.yellowAccent[600],
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                ),
                onPressed: () {},
                child: Text("Text Exemple"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
