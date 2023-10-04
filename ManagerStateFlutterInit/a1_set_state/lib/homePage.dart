// ignore_for_file: file_names, unused_import, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int contagem = 0;
  Color fundo = Colors.red;

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Container(
        color: fundo,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Contagem:"),
              Text("${contagem.toString()} \n"),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    contagem += 1;
                    if (contagem == 10) {
                      fundo = Colors.green;
                    }
                  });
                },
                child: Text(" +1 "),
              ),
              SizedBox(
                height: 3,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      fundo = Colors.blue;
                    });
                  },
                  child: Text("Azul"))
            ],
          ),
        ),
      ),
    );
  }
}
