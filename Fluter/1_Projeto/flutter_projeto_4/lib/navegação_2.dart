// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 14, 95, 203),
        title: Text(
          "Pagina #2",
          style: TextStyle(
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
      body: Container(),
    );
  }
}
