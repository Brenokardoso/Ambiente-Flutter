// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          title: Text("AppBarDasBoas"),
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Center(
              child: Column(
                children: [
                  AlertDialog(
                    title: Text(
                      "Cuidado com o clima",
                    ),
                    content: Text(
                      "Breno prevê chuva para o clima da tarde",
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "botao",
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Colors.transparent,
                      ),
                      SimpleDialog(
                        title: Text("Simple Dialog"),
                        children: [
                          SimpleDialogOption(
                            child: Text("Texto 1"),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 200,
                    color: Colors.transparent,
                  ),
                  Text("showModalButtonSheet"),
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (_) {
                          return Text("Teste do showModalBottomSheet");
                        },
                      );
                    },
                    child: Text("ir"),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
