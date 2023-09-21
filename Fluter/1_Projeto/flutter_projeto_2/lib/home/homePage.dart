// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 175, 175, 175),
      body: Center(
        child: Container(
          color: Colors.red[600],
          child: Text("Olá"),
        ),
      ),
    );
  }
}
