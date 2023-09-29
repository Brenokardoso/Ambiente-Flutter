// ignore_for_file: prefer_const_constructors

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
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 227, 227),
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: MidiaQuery(),
    );
  }
}

class MidiaQuery extends StatelessWidget {
  const MidiaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    final media_query = MediaQuery.of(context);
    print("Largura : ${media_query.size.width}");
    print("Altura : ${media_query.size.height}");
    print("Altura : ${media_query.orientation}");

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.green,
            width: 50,
            height: 50,
          ),
        ],
      ),
    );
  }
}
