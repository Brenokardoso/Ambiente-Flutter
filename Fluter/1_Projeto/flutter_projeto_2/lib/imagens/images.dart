// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Imagens extends StatelessWidget {
  const Imagens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imagens'),
        backgroundColor: Color.fromARGB(255, 232, 47, 47),
      ),
      backgroundColor: Colors.blueGrey[200],
      drawer: Drawer(
        child: Text("Olá,pela barra lateral retratil"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: 200,
              height: 200,
              color: Colors.blue[150],
              child: Image.asset("assets/NebularDuck.png", fit: BoxFit.cover),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.yellowAccent[300],
              child: Image(
                image: NetworkImage(
                    "https://imguol.com/c/noticias/8d/2023/08/25/nebulosa-anel-imagem-capturada-pelo-telescopio-espacial-james-webb-1692973295017_v2_900x506.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Container(
                color: Colors.amber[300],
                width: 200,
                height: 200,
                child: Icon(Icons.abc),
              ),
            )
          ],
        ),
      ),
    );
  }
}
