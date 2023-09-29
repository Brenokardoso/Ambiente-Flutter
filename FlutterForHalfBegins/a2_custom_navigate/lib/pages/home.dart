// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  String argumetos = "Esta é uma frase para passagem de parametros";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed("/detalhes", arguments: argumetos);
              },
              child: Text('Ir para detalhes'),
            )
          ],
        ),
      ),
    );
  }
}
