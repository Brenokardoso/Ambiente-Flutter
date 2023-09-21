// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text(
          "Pagina #4",
          style: TextStyle(
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
      body: Container(),
    );
  }
}
