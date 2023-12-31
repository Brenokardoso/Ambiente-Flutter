// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

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
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => HomePage(),
        "/Page1": (_) => Page1(),
        "/Page2": (_) => Page2(),
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
                child: Text("OK"),
              ),
            ),
          ),
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
                child: Text("Only Normal Button"),
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
                onPressed: () => Navigator.of(context).pop(),
                child: Text("Only Normal Button 2"),
              ),
            ),
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
      body: Container(
        child: Container(
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
            child: Text("New Button"),
          ),
        ),
      ),
    );
  }
}
