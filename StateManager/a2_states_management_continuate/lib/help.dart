// ignore_for_file: prefer_const_constructors, unused_import, unnecessary_string_interpolations, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'contador.dart';
import 'package:provider/provider.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Help")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Contagem:"),
            Container(
              child: Consumer<Contador>(
                builder: (context, contador, child) =>
                    Text("${contador.contador.toString()}"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
