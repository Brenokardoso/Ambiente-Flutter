// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  Map<String, num> list = {
    // "um": 1,
    // "dois": 2,
    // "tres": 3,
    // "quatro": 4,
    // "cinco": 5,
    // "seis": 6,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.blue[600],
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator
            .of(context).pushNamed("/detalhes", arguments: list);
          },
          child: Text("Ir para Detalhes"),
        ),
      ),
    );
  }
}
