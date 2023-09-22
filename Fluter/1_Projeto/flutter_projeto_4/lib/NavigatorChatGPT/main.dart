// ignore_for_file: prefer_const_constructors, unnecessary_import, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      home: Tela1(),
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[550],
      // appBar: AppBar(
      //   title: Text("Tela1"),
      //   backgroundColor: Colors.blue[700],
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 140,
            height: 140,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Tela2(
                          data: "Dados de routes and screams",
                        );
                      },
                    ),
                  );
                },
                child: Center(
                  child: Text("Ir para Tela 2 por página"),
                ),
              ),
            ),
          ),
          Container(
            width: 140,
            height: 140,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      settings: RouteSettings(name: "Tela2"),
                      builder: (BuildContext context) {
                        return Tela2(
                          data: "Esta é uma sisntese de texto",
                        );
                      },
                    ),
                  );
                },
                child: Text("Ir para Tela 2 por nome"),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  Tela2({super.key, required this.data});

  String? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[550],
      // appBar: AppBar(
      //   title: Text("Tela2"),
      //   backgroundColor: Colors.blue[700],
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 140,
            height: 140,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Center(
                  child: Text("Sair da Tela 2 $data"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
