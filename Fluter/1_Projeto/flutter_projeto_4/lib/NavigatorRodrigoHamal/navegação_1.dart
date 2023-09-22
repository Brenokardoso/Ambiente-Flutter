// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_projeto_4/NavigatorRodrigoHamal/navega%C3%A7%C3%A3o%20_3.dart';
import 'package:flutter_projeto_4/NavigatorRodrigoHamal/navega%C3%A7%C3%A3o_2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text(
          "Pagina #1",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.red[700],
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext semtext) {
                      return Page2();
                    },
                  ),
                );
              },
              child: Text("Ir para Pagina #2"),
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
