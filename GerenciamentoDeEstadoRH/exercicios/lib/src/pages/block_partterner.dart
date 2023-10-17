// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: null,
    );
  }
}

class BlocoDeContagem {
  int _contador = 0;
  final _contadorStreamController = StreamController<int>();
  Stream<int> get counterStream => _contadorStreamController.stream;

  incrementaContador() {
    _contador++;
    _contadorStreamController.sink.add(_contador);
  }

  void dispose() {
    _contadorStreamController.close();
  }
}

class BlocDemo extends StatefulWidget {
  const BlocDemo({super.key});

  @override
  State<BlocDemo> createState() => _BlocDemoState();
}

class _BlocDemoState extends State<BlocDemo> {
  var bloc = BlocoDeContagem();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Block Partter Incrementate"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
              stream: bloc.counterStream,
              builder: (context, widget) {
                if (widget.hasData) {
                  return Text("${widget.data}");
                } else {
                  DoNothingAction;
                }
                return Text("sla");
              },
            ),
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  bloc.incrementaContador();
                },
                child: Text("+1"))
          ],
        ),
      ),
    );
  }
}
