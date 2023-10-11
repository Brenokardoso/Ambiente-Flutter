// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, unnecessary_string_interpolations, prefer_final_fields, unused_field

import 'package:flutter/material.dart';

class ValuesNotifers extends StatefulWidget {
  const ValuesNotifers({super.key});

  @override
  State<ValuesNotifers> createState() => _ValuesNotifersState();
}

class _ValuesNotifersState extends State<ValuesNotifers> {
  String? texto_mutavel = "";
  final formKey = GlobalKey<FormState>();
  var _text_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        title: Text("ValuesNotifers"),
      ),
      body: Form(
        key: formKey,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: _text_controller,
                    decoration:
                        InputDecoration(labelText: "Digite qualquer coisa"),
                    onChanged: (txt) => setState(() {
                      texto_mutavel = txt;
                    }),
                  ),
                  SizedBox(height: 30),
                  Text("Texto digitado: $texto_mutavel"),
                  // ElevatedButton(
                  //     onPressed: () {
                  //       if (formKey.currentState!.validate()) {
                  //         formKey.currentState!.save();
                  //       }
                  //     },
                  //     child: Text("Salvar")),
                  SizedBox(height: 30),
                  Teste(),
                  SizedBox(height: 20),
                  Classe2(),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  ValueNotifier<String> texto = ValueNotifier<String>("");
  final formKey = GlobalKey<FormState>();
  var _text_controller = TextEditingController();

  @override
  void dispose() {
    _text_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Center(
        child: Column(
          children: [
            TextFormField(
              controller: _text_controller,
              onChanged: (value) => texto.value = value,
            ),
            ValueListenableBuilder(
                valueListenable: texto,
                builder: (_, valor, widget) {
                  return Text("Texto digitado : $valor");
                }),
          ],
        ),
      ),
    );
  }
}

class Classe2 extends StatefulWidget {
  const Classe2({super.key});

  @override
  State<Classe2> createState() => _Classe2State();
}

class _Classe2State extends State<Classe2> {
  ValueNotifier<int> contador = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Text('Pressione o botão abaixo'),
          SizedBox(height: 30),
          FloatingActionButton(
            onPressed: () {
              contador.value += 1;
            },
            child: Text("Press"),
          ),
          SizedBox(height: 20),
          ValueListenableBuilder(
            valueListenable: contador,
            builder: (context, value, widget) {
              print("class contador:$contador ");
              return Text("Contador ${contador.value}");
            },
          )
        ],
      ),
    );
  }
}
