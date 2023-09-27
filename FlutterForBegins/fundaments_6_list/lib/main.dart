// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_returning_null_for_void, avoid_print

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
      // home: HomePageVertical(),
      home: HomePageHorizontal(),
    );
  }
}

class HomePageVertical extends StatelessWidget {
  const HomePageVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        backgroundColor: Colors.red[600],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.star_outlined,
              color: Colors.yellowAccent[400],
            ),
            trailing: TextButton(
              onPressed: () => print("Olá"),
              child: Text("Veja +"),
            ),
            title: Text(
              "Avaliações dos usuários",
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.star_outlined,
              color: Colors.yellowAccent[400],
            ),
            title: Text("Lista de Restaurantes Tops"),
            trailing: IconButton(
              onPressed: () => print("Foi ao restaurante indicado"),
              icon: Icon(
                Icons.restaurant,
                color: Colors.red,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.star_outlined,
              color: Colors.yellowAccent[400],
            ),
            title: Text("Lista de Filmes para assistir"),
            trailing: IconButton(
              onPressed: () => print("AssistindoTv"),
              icon: Icon(
                Icons.tv,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePageHorizontal extends StatelessWidget {
  const HomePageHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        backgroundColor: Colors.orange[600],
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 200,
            color: Colors.red,
          ),
          Container(
            width: 200,
            color: Colors.blue,
          ),
          Container(
            width: 200,
            color: Colors.yellow,
          ),
          Container(
            width: 200,
            color: Colors.purple,
          ),
          Container(
            width: 200,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
