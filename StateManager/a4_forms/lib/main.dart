// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(HomesPages());
}

class HomesPages extends StatefulWidget {
  @override
  _HomesPages createState() => _HomesPages();
}

class _HomesPages extends State<HomesPages> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(context) {
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
        ),
        body: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "Digite seu email"),
                validator: (value) => (value == null || value.isEmpty)
                    ? ("O campo está vazio")
                    : null,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                // autovalidateMode: AutovalidateMode.always,
                decoration: InputDecoration(labelText: "Digite a sua senha"),
                validator: (value) =>
                    (value == null || value.isEmpty) ? "Campo invalido" : null,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(6),
                width: 110,
                height: 40,
                color: Color.fromARGB(255, 230, 224, 224),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Entrar",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300),
                  ),
                  style: ButtonStyle(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela2")),
    );
  }
}
