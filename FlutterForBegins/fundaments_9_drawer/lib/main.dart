// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_print

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
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
          backgroundColor: Colors.tealAccent[600],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text("Cabeçalhos"),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                leading: Icon(Icons.heart_broken),
                title: Text("MyDrawler"),
                subtitle: Text("Sooo beafutil"),
                trailing: TextButton(
                  onPressed: () => print("ok"),
                  child: Text(
                    "botao qualquer",
                  ),
                ),
              )
            ],
          ),
        ),
        body: Center(
          child: Text("Olá amigo!"),
        ),
      ),
    );
  }
}
