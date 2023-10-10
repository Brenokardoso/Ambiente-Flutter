// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, unused_field, use_key_in_widget_constructors, must_call_super, unused_import, unused_local_variable, unnecessary_brace_in_string_interps, avoid_print

import 'dart:math';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/widgets/imc_gauge_full.dart';
import 'package:flutter_default_state_manager/widgets/imc_gauges_range.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:intl/date_symbol_data_custom.dart';

class Imc extends StatefulWidget {
  @override
  State<Imc> createState() => _ImcState();
}

class _ImcState extends State<Imc> {
  final _pesoController = TextEditingController();
  final _alturaController = TextEditingController();
  var peso = 0;
  var altura = 0;
  var imc = 0.0;
  final formKey = GlobalKey<FormState>();

  calcularIMC({required double peso, required double altura}) {
    setState(() {
      imc = peso / pow(altura, 2);
    });
  }

  @override
  void dispose() {
    _pesoController.dispose();
    _alturaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Imc"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                ImcGaugeFull(
                  imc: imc,
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _pesoController,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(labelText: "Peso"),
                  validator: (value) => (value == null || value.isEmpty)
                      ? "Digite algo no campo de Peso"
                      : null,
                  onSaved: (txt) {
                    setState(() {
                      peso = int.parse(txt.toString());
                    });
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _alturaController,
                  decoration: InputDecoration(labelText: "Altura"),
                  validator: (value) => (value == null || value.isEmpty)
                      ? "Digite algo no campo de Altura"
                      : null,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        print(peso);
                      }
                    },
                    child: Text("Calcular IMC"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
