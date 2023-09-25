// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Detalhe extends StatelessWidget {
  const Detalhe({super.key});

  @override
  Widget build(BuildContext context) {
    final param =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes"),
      ),
      body: Container(
        child: Center(
          child: Text("${param?['id'] ?? 0},"),
        ),
      ),
    );
  }
}
