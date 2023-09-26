// ignore_for_file: unnecessary_this, prefer_typing_uninitialized_variables, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class Exemplo extends StatelessWidget {
  Exemplo({this.title, required this.onPressed, super.key});

  var title;
  Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Clique no botão abaixo"),
            OutlinedButton(
              onPressed: () {
                print("Olá,amigo!");
              },
              child: Text(this.title),
            ),
            Image.asset(
              "assets/galactyduck.png",
              width: 100,
              height: 100,
            ),
            Image(
              width: 120,
              height: 120,
              image: AssetImage("assets/dorock.jpeg"),
            ),
            Image(
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTv3beWsh5fq4d7aGdsxGDeLzFRQ4399SD6FnZjHMZDJWTxERubqUtZ6fcgGPlR-ZX1-U&usqp=CAU"),
            ),
            Image.network(
              "https://ichef.bbci.co.uk/news/1024/branded_portuguese/89EC/production/_107380353_cuasar3.png",
              width: 200,
              height: 300,
            ),
          ],
        ),
      ],
    );
  }
}
