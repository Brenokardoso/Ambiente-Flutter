// ignore_for_file: prefer_const_constructors

import 'package:a1_default_state_manager/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

void main() {
  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Default Set State Manager",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
