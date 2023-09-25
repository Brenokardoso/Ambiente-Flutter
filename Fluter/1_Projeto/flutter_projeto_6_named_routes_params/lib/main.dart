// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_projeto_6_named_routes_params/lista.dart';

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
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => HomePage(),
        "/Page1": (_) => Page1(),
        "/Page2": (_) => Page2(),
        "/Page3": (_) => Page3(),
        "/Lista": (_) => Lista(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        backgroundColor: Colors.blue[800],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 125,
              height: 125,
              color: const Color.fromARGB(255, 141, 53, 196),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/Page1");
                },
                child: Text("Ir para página 1"),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Container(
                width: 125,
                height: 125,
                color: Colors.teal[600],
                child: ElevatedButton(
                  onPressed: () {
                    return Navigator.of(context).pop();
                  },
                  child: Text("Sair do app"),
                ),
              ),
            ),
          ),
          Container(
            width: 125,
            height: 125,
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed("/Lista"),
              child: Text("Lista"),
            ),
          )
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela1"),
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 125,
              height: 125,
              color: Colors.green[400],
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed("/Page2"),
                child: Text("Ir para Página2"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela2"),
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 125,
              height: 125,
              color: Color.fromARGB(255, 194, 20, 20),
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed("/Page3"),
                child: Text("Ir para página 3"),
              ),
            ),
            Container(
              width: 125,
              height: 125,
              color: Color.fromARGB(255, 104, 201, 47),
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text("Voltar para Pagina 2"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela3"),
        backgroundColor: Colors.yellow[600],
      ),
      body: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.red[500],
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => Page1(),
                  ),
                );
              },
              child: Text("Ir para página 1"),
            ),
          ),
          Container(
            width: 125,
            height: 125,
            color: Colors.orangeAccent[600],
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Voltar para a Pagina 2"),
            ),
          ),
        ],
      ),
    );
  }
}
