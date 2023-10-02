// ignore_for_file: prefer_const_constructors

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: Text("AppBarDialogs"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          title: Text("Ocorreu um erro do tipo erro 328"),
                          content: Text(
                              "Esse erro diz que ele é definitivamente um erro"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Submeter"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("button"),
                ),
              ),
              AlertDialog(
                content: Text("Um exemplo de como é o Alerta"),
                title: Text("Alerta dos bons"),
              ),
              SimpleDialog(
                title: Text("SimpleDialog"),
                children: [
                  SimpleDialogOption(
                    child: Text("Op1"),
                    onPressed: () {
                      print("DialogoSimples");
                    },
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (_) {
                      return Container(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'Opções do BottomSheet',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            ListTile(
                              leading: Icon(Icons.star),
                              title: Text('Opção 1'),
                              onTap: () {
                                // Lógica para ação da Opção 1
                                Navigator.of(context).pop();
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.star),
                              title: Text('Opção 2'),
                              onTap: () {
                                // Lógica para ação da Opção 2
                                Navigator.of(context).pop();
                              },
                            ),
                            // Adicione mais opções conforme necessário
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text("Mostrar BottomSheet"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
