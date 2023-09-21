// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: Center(
            child: Text(
              "NavBar",
              style: TextStyle(
                fontFamily: "Tourney",
                color: Colors.black87,
              ),
            ),
          )),
      body: Column(
        children: [
          Row(
            children: [Text("Olá")],
          ),
          Container(
            child: Text(
              "Olá,este é um pato,o outro está entre o pc e a cadeira",
            ),
          ),
          Container(
            child: Image(
              image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQutU9eaUoqld_8zJ5V8b7HuHm1Vtz7qoamtQ&usqp=CAU",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
