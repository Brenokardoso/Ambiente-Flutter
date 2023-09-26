// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_this, prefer_typing_uninitialized_variables, must_be_immutable
import 'package:flutter/material.dart';
import 'exemplo.dart';

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
                child: Exemplo(
                  title: "Esta é uma sintese de args",
                  onPressed: () {
                    Text("Clicou no botão");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
