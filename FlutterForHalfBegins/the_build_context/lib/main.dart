// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, library_private_types_in_public_api, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

void main() {
  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  const App({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var texto = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 181, 219, 238),
      appBar: AppBar(
        title: Text("App"),
      ),
      body: Center(
        child: Form(
          child: Column(
            children: [
              TextField(
                onChanged: (String value) {
                  setState(
                    () {
                      texto = value;
                    },
                  );
                },
              ),
              Text("Texto digitado : ${texto}"),
            ],
          ),
        ),
      ),
    );
  }
}
