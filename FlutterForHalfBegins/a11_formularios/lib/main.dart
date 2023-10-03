// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_print, prefer_typing_uninitialized_variables

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
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: Text("AppBar")),
        body: FormsPages(),
      ),
    );
  }
}

class FormsPages extends StatefulWidget {
  const FormsPages({super.key});

  @override
  State<FormsPages> createState() => _FormsPagesState();
}

class _FormsPagesState extends State<FormsPages> {
  final formKey = GlobalKey<FormState>();
  final nameECN = TextEditingController();
  final nameECP = TextEditingController();
  var escolha;

  @override
  void dispose() {
    nameECN.dispose();
    nameECP.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                maxLines: null,
                controller: nameECN,
                decoration: InputDecoration(
                    hintText: "Completo",
                    labelText: "Nome",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Digite algum texto";
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: nameECP,
                decoration: InputDecoration(
                    labelText: "Senha",
                    hintText: "Uma complexa",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink)),
                    border: OutlineInputBorder()),
                validator: (texto) => (texto == null || texto.isEmpty)
                    ? "campo de senha vazio"
                    : null,
                obscureText: true,
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                isDense: true,
                icon: Icon(Icons.arrow_downward_outlined),
                decoration: InputDecoration(
                    labelText: "Categoria",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.yellow))),
                validator: (String? value) =>
                    value == null || value.isEmpty ? "Valor nulo" : null,
                onChanged: (String? newValue) {
                  print("Selecionado");
                },
                items: [
                  DropdownMenuItem(
                    child: Text("Categoria 1"),
                    value: 'c1',
                    onTap: () => print("C1"),
                  ),
                  DropdownMenuItem(
                    child: Text("Categoria 2"),
                    value: 'c2',
                    onTap: () => print("C2"),
                  ),
                  DropdownMenuItem(
                    child: Text("Categoria 3"),
                    value: 'c3',
                    onTap: () => print("C3"),
                  ),
                  DropdownMenuItem(
                    value: "red",
                    onTap: () {
                      print("Container red");
                    },
                    child: Container(
                      width: 400,
                      height: 20,
                      color: Colors.red,
                      child: Text("Container Teste"),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              "Formulário enviado,email :${nameECN.text}  senha : ${nameECP.text} : ")));
                    }
                  },
                  child: Text("Enviar")),
            ],
          ),
        )
      ],
    );
  }
}
