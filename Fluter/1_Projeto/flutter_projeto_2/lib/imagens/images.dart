// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class Imagens extends StatelessWidget {
  const Imagens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        backgroundColor: Colors.green[600],
      ),
      backgroundColor: const Color.fromARGB(255, 166, 166, 166),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.all(5),
              child: Center(
                child: Image(
                  image: AssetImage("assets/NebularDuck.png"),
                  width: 300,
                  height: 200,
                ),
              )),
          Container(
            margin: EdgeInsets.all(5),
            child: Center(
              child: Image(
                // image: NetworkImage(
                // "https://s1.static.brasilescola.uol.com.br/img/2017/03/nebulosa-anel.jpg"),
                image: NetworkImage(
                  "https://www.astronoo.com/images/galaxies/petit-nuage-de-magellan-hd.jpg",
                ),
                width: 300,
                height: 200,
              ),
            ),
          ),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/NebularDuck.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                "Olá",
                style: TextStyle(
                  backgroundColor: const Color.fromARGB(235, 255, 255, 255),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
