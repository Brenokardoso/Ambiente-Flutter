// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("SetState"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("changenotifier"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("valueNotifier"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Streams"),
            ),
          ],
        ),
      ),
    );
  }
}
