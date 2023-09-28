// ignore_for_file: prefer_const_constructors

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:fundaments_13_navigator_with_routes/main.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Voltar para a Home"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/Page2");
            },
            child: Text("ir para página 2"),
          )
        ],
      ),
    );
  }
}
