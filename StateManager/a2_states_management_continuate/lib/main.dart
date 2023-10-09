// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, unused_import, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'help.dart';
import 'contador.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) {
        return Contador();
      },
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  App({Key? chaves});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "/help": (context) => Help(),
        "/2": (context) => Scaffold(),
      },
      initialRoute: "/",
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  String? texto_digitado;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Provider.of<Contador>(context, listen: false).aumentaValor();
                },
                child: Text("Aumentar")),
            SizedBox(height: 10),
            Text("Contagem:"),
            Consumer<Contador>(
              builder: (context, contador, child) =>
                  Text(contador.contador.toString()),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/help");
                },
                child: Text("Ir para Help")),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.amber,
              child: TextField(
                decoration: InputDecoration(labelText: "Campo de Nome"),
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
