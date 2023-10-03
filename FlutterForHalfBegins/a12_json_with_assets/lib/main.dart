// ignore_for_file: prefer_const_constructors, unused_element

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: CidadesPages(),
    );
  }
}

class CidadesPages extends StatefulWidget {
  const CidadesPages({super.key});

  @override
  State<CidadesPages> createState() => _CidadesPagesState();
}

class _CidadesPagesState extends State<CidadesPages> {
  @override
  Widget build(BuildContext context) {
    var cidades = <Cidades>[];

    Future<void> loadCitys() async {
      final cidadesJson = rootBundle.loadString("assets/cidades/json");
      setState(() {});
    }

    @override
    void initState() {
      super.initState();
      loadCitys();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("AppBars"),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          var cidade = cidades[index];
          return ListTile(
            title: Text(cidade.cidade),
            subtitle: Text(cidade.uf),
          );
        },
      ),
    );
  }
}

class Cidades {
  final String cidade;
  final String uf;

  Cidades({required this.cidade, required this.uf});
}
