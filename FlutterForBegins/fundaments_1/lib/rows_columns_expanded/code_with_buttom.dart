// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_returning_null_for_void, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class BotaoEmTexto extends StatelessWidget {
  const BotaoEmTexto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(4),
              child: Text("Clique no botão abaixo"),
            ),
            TextButton(
              onPressed: () => null,
              child: Text("Botão em Texto"),
            ),
          ],
        ),
      ),
    );
  }
}

class BotaoFlat extends StatelessWidget {
  const BotaoFlat({super.key});

  ActionButtom() {
    print("O botão foi clicado");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Clique no botão abaixo"),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 25,
                    color: Colors.transparent,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                ActionButtom();
              },
              child: Text("Clique no Botão abaixo"),
            ),
          ],
        ),
      ),
    );
  }
}
