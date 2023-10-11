// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_field, prefer_is_not_empty
import 'package:flutter/material.dart';

class SetState extends StatefulWidget {
  const SetState({super.key});

  @override
  State<SetState> createState() => _SetStateState();
}

class _SetStateState extends State<SetState> {
  var contador = 0;
  var qnt_incremento = 1;
  Color cor_do_fundo = const Color.fromARGB(255, 144, 164, 174);

  final _incrementoControler = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cor_do_fundo,
      appBar: AppBar(
        title: Text("SetState"),
      ),
      body: Center(
        child: ListView(
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Center(
                      child:
                          Text("Clique no botão para incrementar a contagem:")),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _incrementoControler,
                    decoration: InputDecoration(
                        labelText:
                            "Quantidade a ser Incrementada : $qnt_incremento"),
                    // validator: (value) =>
                    //     value!.isEmpty || value == null ? "1" : null,
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text("$contador"),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: FloatingActionButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          setState(() {
                            if (!_incrementoControler.text.isEmpty) {
                              qnt_incremento =
                                  int.parse(_incrementoControler.text);
                              contador += qnt_incremento;
                            } else {
                              contador++;
                            }
                            if (contador >= 30) {
                              cor_do_fundo = Colors.blueGrey;
                            }
                          });
                        }
                      },
                      child: Text("Press"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
