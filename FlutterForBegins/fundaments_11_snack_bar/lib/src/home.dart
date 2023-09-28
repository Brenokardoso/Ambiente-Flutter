// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("AppBar"),
        backgroundColor: Colors.limeAccent,
      ),
      body: Center(
        child: Builder(
          builder: (BuildContext context) {
            return ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Aparece e some em 2 segundos"),
                    duration: Duration(seconds: 2),
                    action: SnackBarAction(
                      label: "Desfazer",
                      onPressed: () {},
                    ),
                  ),
                );
              },
              child: Text(
                "Botão",
              ),
            );
          },
        ),
      ),
    );
  }
}
