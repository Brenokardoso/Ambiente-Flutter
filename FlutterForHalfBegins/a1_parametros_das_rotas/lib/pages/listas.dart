// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:a1_parametros_das_rotas/pages/detalhes_page.dart';
import 'package:flutter/material.dart';

class Listas extends StatelessWidget {
  const Listas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ListView(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(
                      name: "Detalhe",
                      arguments: {
                        "id": 10,
                      },
                    ),
                    builder: (context) {
                      return Detalhes();
                    },
                  ),
                );
              },
              child: Text("Botão"),
            )
          ],
        ),
      ),
    );
  }
}
