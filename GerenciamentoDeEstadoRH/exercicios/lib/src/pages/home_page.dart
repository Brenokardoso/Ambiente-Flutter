// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:exercicios/src/pages/%20value_notifer.dart';
import 'package:exercicios/src/pages/acc_light_block_partter.dart';
import 'package:exercicios/src/pages/block_partterner.dart';
import 'package:exercicios/src/pages/change_notfier.dart';
import 'package:exercicios/src/pages/change_notifier_dois.dart';
import 'package:exercicios/src/pages/set_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Clique para Navegar  "),
            SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SetState()));
                },
                child: Text("SetState")),
            SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ValuesNofieres()));
                },
                child: Text("ValueNotifier")),
            SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => (Tarefa())));
                },
                child: Text("ChangeNotifier")),
            SizedBox(height: 15),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => (ChangesTwo())));
                },
                child: Text("Change Notifier Two")),
            SizedBox(height: 15),
            ElevatedButton(onPressed: () {}, child: Text("StateManagement")),
            SizedBox(height: 15),
            ElevatedButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => BlocDemo())),
                child: Text("BLockParterner")),
            SizedBox(height: 15),
            ElevatedButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => LightTurnOnOff())),
                child: Text("Light Partterner"))
          ],
        ),
      ),
    );
  }
}
