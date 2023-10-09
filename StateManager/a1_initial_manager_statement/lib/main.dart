// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, override_on_non_overriding_member, use_key_in_widget_constructors, library_private_types_in_public_api, no_logic_in_create_state

import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  var contagem = 0;
  Color fundo = Colors.red;
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("HomePage"),
        ),
        body: Container(
          color: fundo,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Contagem:"),
              Text("$contagem"),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      contagem += 1;
                      if (contagem == 10) {
                        fundo = Colors.green;
                      }
                      if (contagem == 15) {
                        fundo = Colors.purple;
                      }
                      if (contagem == 20) {
                        fundo = Colors.orange;
                      }
                      if (contagem == 25) {
                        fundo = Colors.yellow;
                      }
                    });
                  },
                  child: Text("+1"))
            ],
          ),
        ),
      ),
    );
  }
}
