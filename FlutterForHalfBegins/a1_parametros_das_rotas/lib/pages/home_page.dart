// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("AppBar"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ListView(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/listas");
                },
                child: Text("Go to Lists"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
