// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: Stack2(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 227, 227),
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
            width: 300,
            height: 300,
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.pink,
          ),
          Container(
            width: 75,
            height: 75,
            color: Colors.yellow,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 40,
              height: 40,
              color: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}

class Stack2 extends StatelessWidget {
  const Stack2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 227, 227),
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://media.istockphoto.com/id/481229372/pt/foto/gal%C3%A1xia-espiral-ilustra%C3%A7%C3%A3o-da-via-l%C3%A1ctea.jpg?s=612x612&w=0&k=20&c=0StkiXaTNQ1Xrk6J3vJHNhaq1jG6J9ofLfLP2Yxn10M=",
                ),
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 50,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Card(
                    child: Text(
                      "Galaxias",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Card(
                    elevation: 8,
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                        """Uma galáxia é um vasto sistema estelar composto por bilhões, ou até mesmo trilhões, de estrelas, bem como planetas, asteroides, poeira cósmica e matéria escura. Essas imensas estruturas cósmicas são os blocos de construção fundamentais do universo. Entre as galáxias, existe um espaço intergaláctico vasto e muitas vezes vazio.

Nossa própria galáxia, a Via Láctea, é uma entre bilhões de outras galáxias que povoam o universo observável. A Via Láctea abriga nosso sistema solar, com o Sol e seus planetas, incluindo a Terra. É uma espiral majestosa, com braços espirais repletos de estrelas, onde a vastidão do cosmos se torna palpável.

As galáxias vêm em uma variedade de formas e tamanhos, desde as espirais elegantes como a Via Láctea até as elípticas, que parecem esferas alongadas, e as irregulares, que têm uma forma mais caótica e assimétrica. Algumas galáxias são conhecidas por seus aglomerados de estrelas brilhantes e zonas de formação estelar ativa, enquanto outras são mais tranquilas e maduras.

As galáxias são verdadeiramente um espetáculo do cosmos, revelando a grandeza e a complexidade do universo que habitamos. Cada uma delas é um mundo em si mesma, repleto de mistérios que desafiam nossa compreensão e inspiram nossa imaginação. Estudar esses sistemas cósmicos é uma busca contínua para desvendar os segredos do universo e nossa própria existência nele."""),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
