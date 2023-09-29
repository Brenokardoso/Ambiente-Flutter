// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:a1_parametros_das_rotas/pages/detalhes_page.dart';
import 'package:a1_parametros_das_rotas/pages/home_page.dart';
import 'package:a1_parametros_das_rotas/pages/listas.dart';
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
      title: "",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        "/home": (context) => HomePage(),
        "/detalhes": (_) => Detalhes(),
        "/listas": (BuildContext listas) => Listas(),
      },
    );
  }
}
