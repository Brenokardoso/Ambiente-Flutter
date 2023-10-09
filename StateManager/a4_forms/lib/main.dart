// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_print

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
                decoration: InputDecoration(hintText: "Nome :"),
                validator: (value) => (value == null || value.isEmpty)
                    ? ("O campo está vazio")
                    : null,
              ),
              SizedBox(
                height: 15,
              ),
              FloatingActionButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    print("Tudo Validado");
                  }
                },
                child: Text("Enviar"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
