// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, non_constant_identifier_names, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => CartModel(),
    child: ChangesTwo(),
  ));
}

class CartModel extends ChangeNotifier {
  List<dynamic> _lista = [];

  get lista => _lista;

  int get preco_do_carro => _lista.length * 42;

  addItem(item) {
    _lista.add(item);
    notifyListeners();
  }

  itemRemove(item) {
    _lista.remove(item);
    notifyListeners();
  }

  pegaLista() => _lista;
}

class ChangesTwo extends StatefulWidget {
  const ChangesTwo({super.key});

  @override
  State<ChangesTwo> createState() => _ChangesTwoState();
}

class _ChangesTwoState extends State<ChangesTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Change Notifer Two"),
      ),
      body: Center(
        child: Column(
          children: [
            Consumer(builder: (context, msg, widget) {
              return Text("${msg}");
            })
          ],
        ),
      ),
    );
  }
}
