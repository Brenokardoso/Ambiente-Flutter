// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_web_libraries_in_flutter, unused_import

import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  Detalhes({super.key});

  @override
  Widget build(BuildContext context) {
    final params =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        backgroundColor: Colors.blue,
      ),
      body: Text(
        "Os argumentos foram ${params['id'] ?? 0}",
      ),
    );
  }
}
