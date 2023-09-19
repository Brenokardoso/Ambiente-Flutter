// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(dizOla());
}

// classe principal do seu aplicativo
class dizOla extends StatelessWidget {
  @override
  Widget build(BuildContext contexto) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ola esta é uma sintese de texto"),
        ),
        body: MeuWidgets(),
      ),
    );
  }
}

class MeuWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "Olá Flutter",
      style: TextStyle(
        fontSize: 32,
      ),
    ));
  }
}
