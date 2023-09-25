// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_projeto_7_custon_navigate/pages/detalhes.dart';
import 'package:flutter_projeto_7_custon_navigate/pages/home_page.dart';

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
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        if (settings.name == "/") {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => HomePage(),
          );
        } else if (settings.name == "/detalhes") {
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => Detalhes(),
          );
        } else {
          return null;
        }
      },

      // routes: {
      //   "/": (context) => HomePage(),
      //   "/detalhes": (context) {
      //     return Detalhes();
      //   },
      // },
    );
  }
}
