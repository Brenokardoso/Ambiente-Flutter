// ignore_for_file: prefer_const_constructors

import 'package:a2_custom_navigate/pages/detalhes.dart';
import 'package:a2_custom_navigate/pages/home.dart';
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
      home: HomePage(),
      onGenerateRoute: ((settings) {
        if (settings.name == "/") {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => HomePage(),
          );
        } else if (settings.name == "/detalhes") {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) {
              return Detalhes();
            },
          );
        }
      }),
    );
  }
}
