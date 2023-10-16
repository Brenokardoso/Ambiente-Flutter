// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ValuesNofieres extends StatefulWidget {
  ValuesNofieres({Key? key});

  @override
  // ignore: library_private_types_in_public_api
  _ValuesNotifieres createState() => _ValuesNotifieres();
}

class _ValuesNotifieres extends State<ValuesNofieres> {
  var pontos = ValueNotifier(0);
  @override
  Widget build(BuildContext primeiro_contexto) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Values Notifer"),
      ),
      body: ValueListenableBuilder(
        valueListenable: pontos,
        builder: (context, valor_dos_pontos, child) {
          return ListView(
            children: [
              Text(
                "Pontos:",
                style: TextStyle(fontSize: 45.0),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  child: Center(
                    child: Text(
                      "${pontos.value}",
                      style: TextStyle(fontSize: 60),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 90),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 400,
                      color: Colors.green,
                      child: Positioned(
                        child: ElevatedButton(
                          onPressed: () {
                            pontos.value >= 0
                                ? pontos.value++
                                : DoNothingAction();
                            print(valor_dos_pontos);
                          },
                          child: Text("Botão"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 400,
                      color: Colors.red,
                      child: Positioned(
                        child: ElevatedButton(
                          onPressed: () {
                            pontos.value >= 0
                                ? pontos.value--
                                : DoNothingAction();
                          },
                          child: Text("Botão"),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
