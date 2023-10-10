// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, unused_field

import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaContoller = TextEditingController();
  String? email = "";
  String? senha = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: Text("AppBar")),
        body: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Digite o seu email",
                  ),
                  validator: (value) => (value == null || value.isEmpty)
                      ? "Preencha o campo de Email"
                      : null,
                  onSaved: (txt) {
                    setState(
                      () {
                        email = txt;
                      },
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _senhaContoller,
                  decoration: InputDecoration(labelText: "Digite a sua senha"),
                  validator: (value) => (value == null || value.isEmpty)
                      ? "Preencha o campo de senha"
                      : null,
                  obscureText: true,
                  onSaved: (txt) {
                    setState(() {
                      senha = txt;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    }
                  },
                  child: Text("Enviar"),
                ),
                Text("Email:${email}"),
                Text("Senha:${senha}"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
