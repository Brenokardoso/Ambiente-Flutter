// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field

import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: '',
      debugShowCheckedModeBanner: false,
      home: LightTurnOnOff(),
    );
  }
}

class LightBlock {
  var _luz = false;
  final _luzController = StreamController<bool>();
  Stream<bool> get luzControler => _luzController.stream;

  void acendeLuz() {
    _luz = true;
    _luzController.sink.add(_luz);
  }

  void apagaLuz() {
    _luz = false;
    _luzController.sink.add(_luz);
  }

  void dispose() {
    _luzController.close();
  }
}

class LightTurnOnOff extends StatefulWidget {
  const LightTurnOnOff({super.key});

  @override
  State<LightTurnOnOff> createState() => _LightTurnOnOffState();
}

class _LightTurnOnOffState extends State<LightTurnOnOff> {
  var light = LightBlock();
  Color? estado;

  @override
  void dispose() {
    light.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("App"),
      ),
      body: Center(
        child: Column(
          children: [
            StreamBuilder(
              stream: light.luzControler,
              builder: (context, snapshot) {
                return Icon(
                  Icons.light,
                  size: 100,
                  color: estado,
                );
              },
            ),
            SizedBox(height: 23),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      light.acendeLuz();
                      print("${light._luz}");
                      estado = Colors.amber;
                    },
                    child: Text("On")),
                SizedBox(width: 30),
                ElevatedButton(
                    onPressed: () {
                      light.apagaLuz();
                      print("${light._luz}");
                      estado = Colors.black;
                    },
                    child: Text("Off"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
