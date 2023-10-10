// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext texto) {
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => Formulario(),
        "/tela1": (_) => Tela1(),
      },
    );
  }
}

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulários"),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "Nome"),
                validator: (value) => (value == null || value.isEmpty)
                    ? "O campo está vazio"
                    : null,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Senha"),
                validator: (value) => (value == null || value.isEmpty)
                    ? "O campo está vazio"
                    : null,
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white38),
                      fixedSize:
                          MaterialStateProperty.all<Size>(Size(100, 40))),
                  onPressed: () {
                    formKey.currentState!.validate();
                    if (formKey.currentState!.validate() == true) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Os dados foram enviados com sucesso!"),
                          action: SnackBarAction(
                              label: "Desfazer", onPressed: () {}),
                        ),
                      );
                      Future<void>(
                        () { 
                          Duration(seconds: 5);
                          Navigator.of(context).pushNamed("/tela1");
                        },
                      );
                    } else {
                      print("Não validado");
                    }
                  },
                  child: Text(
                    "Entrar",
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela1"),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
