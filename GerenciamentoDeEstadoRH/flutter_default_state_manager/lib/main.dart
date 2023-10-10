// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/homepage.dart';
import 'setState/imc_set_state.dart';

void main() {
  runApp(ManagerState());
}

class ManagerState extends StatefulWidget {
  @override
  _ManagerState createState() => _ManagerState();
}

class _ManagerState extends State<ManagerState> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => HomePage(),
        "/imc": (context) => Imc(),
      },
      initialRoute: "/",
    );
  }
}
