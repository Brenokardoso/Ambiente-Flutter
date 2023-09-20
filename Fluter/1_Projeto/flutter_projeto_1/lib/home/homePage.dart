// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter_treeview/flutter_treeview.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton.filled(
            onPressed: () {},
            icon: Icon(Icons.ac_unit),
          ),
        ],
        title: Text("App Bar"),
        backgroundColor: Color.fromRGBO(230, 34, 34, 1),
      ),
      drawer: Drawer(
        child: Center(
          child: Text("Este é um drawer de texto centralizado"),
        ),
      ),
      backgroundColor: Colors.grey[350],
      body: Center(
        child: Text("Olá Mundo do Flutter!"),
      ),
    );
  }
}
