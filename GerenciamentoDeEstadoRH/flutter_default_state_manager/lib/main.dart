// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/blocpartterner/blockpartter_page.dart';
import 'package:flutter_default_state_manager/changeNotifier/changeNotifier.dart';
import 'package:flutter_default_state_manager/homepage.dart';
import 'package:flutter_default_state_manager/setState/imc.dart';
import 'package:flutter_default_state_manager/valueNotifyer/valueNotifier.dart';

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
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => HomePage(),
        "/imc": (context) => Imc(),
        "/notifier": (_) => ValuesNotifyer(imc: 0.0),
        "/change": (conetex) => Changesnotiders(),
        "/block": (conetext) => BlocPartterImc(),
      },
      initialRoute: "/",
    );
  }
}
