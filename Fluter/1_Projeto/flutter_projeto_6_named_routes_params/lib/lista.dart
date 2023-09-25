// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_projeto_6_named_routes_params/detalhe.dart';

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listas"),
      ),
      body: Container(
        child: Center(
          child: TextButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                settings: RouteSettings(
                  name: "detalhe",
                  arguments: <String, dynamic>{
                    "id": 1,
                  },
                ),
                builder: (_) => Detalhe(),
              ),
            ),
            child: Text("Detalhes"),
          ),
        ),
      ),
    );
  }
}
