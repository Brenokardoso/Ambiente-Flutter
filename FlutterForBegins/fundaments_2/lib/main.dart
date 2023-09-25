// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
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
        appBar: AppBar(
          title: Text("AppBar"),
          backgroundColor: Colors.blue[550],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Exemplo(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Exemplo extends StatelessWidget {
  const Exemplo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red[600],
      child: Column(
        children: [
          Text("Texto de Exemplo"),
          OutlinedButton(
            onPressed: () {},
            child: Text("Botão"),
          ),
        ],
      ),
    );
  }
}
