// ignore_for_file: prefer_const_constructors, avoid_returning_null_for_void

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/imc");
                },
                child: Text("SetState")),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text("Value Nofier")),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text("Change Notifier")),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {}, child: Text("Bloc Pater (Streams)")),
          ],
        ),
      ),
    );
  }
}
