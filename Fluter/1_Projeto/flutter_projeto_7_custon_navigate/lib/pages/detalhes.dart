// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  const Detalhes({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes"),
        backgroundColor: Colors.blue[600],
      ),
      body: Container(
        child: Center(
          child: Text("${args ?? 'não foi enviado args!'}"),
        ),
      ),
    );
  }
}
