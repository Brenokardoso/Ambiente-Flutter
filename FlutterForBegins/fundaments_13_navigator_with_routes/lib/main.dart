// ignore_for_file: prefer_const_constructors, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:fundaments_13_navigator_with_routes/src/page1.dart';
import 'package:fundaments_13_navigator_with_routes/src/page2.dart';

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
      routes: {
        "/": (_) => HomePage(),
        "/Page1": (_) {
          return Page1();
        },
        "/Page2": (context) {
          return Page2();
        }
      },
      initialRoute: "/",
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  String? many_args;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            color: Colors.transparent,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Go to Page 1"),
                  onPressed: () => Navigator.of(context).pushNamed("/Page1"),
                ),
                Row(
                  children: [
                    Container(
                      height: 5,
                    )
                  ],
                ),
                ElevatedButton(
                  child: Text("Go to Page 2"),
                  onPressed: () => Navigator.of(context).pushNamed("/Page2",arguments: null),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ScreamArguments {
  String title;
  String menssager;

  ScreamArguments({
    required this.title,
    required this.menssager,
  });
}
