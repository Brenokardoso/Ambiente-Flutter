// ignore_for_file: prefer_const_constructors, avoid_print

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
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  List contatos = ["Breno", "Lucas", "Amanda", "Edison", "Higor"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        backgroundColor: Colors.blueAccent[700],
      ),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person_3 ),
            trailing: TextButton(
              child: Text("Enviar"),
              onPressed: () => print("Enviado"),
            ),
            title: Text(
              "\t\t\t\t\t\t\t${contatos[index]}",
            ),
          );
        },
      ),
    );
  }
}
