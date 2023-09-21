// ignore_for_file: prefer_const_constructors, annotate_overrides, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_projeto_2/home/homePage.dart';
import 'package:flutter_projeto_2/imagens/images.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Debug Show Manager",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Imagens(
        key: key,
      ),
    );
  }
}
