// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field

import 'dart:math';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/changeNotifier/change_notfier_controller.dart';
import 'package:flutter_default_state_manager/widgets/imc_gauge_arvore.dart';
import 'package:intl/intl.dart';

class Changes extends StatefulWidget {
  const Changes({super.key});

  @override
  State<Changes> createState() => _Changes();
}

class _Changes extends State<Changes> {
  final controller = ImcChangeNotifierController();
  final _pesoController = TextEditingController();
  final _alturaController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _alturaController.dispose();
    _pesoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Change Notifer Page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                AnimatedBuilder(
                  animation: controller,
                  builder: (_, __) => RadialFormsGauge(imc: controller.imc),
                ),
                SizedBox(height: 15),
                TextFormField(
                  controller: _pesoController,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(labelText: "Peso(k/g²)"),
                  inputFormatters: [
                    CurrencyTextInputFormatter(
                      locale: "pt_BR",
                      symbol: "",
                      decimalDigits: 2,
                      turnOffGrouping: true,
                    ),
                  ],
                  validator: (value) => value == null || value.isEmpty
                      ? "Campo de peso vazio"
                      : null,
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _alturaController,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(labelText: "Altura(m²)"),
                  inputFormatters: [
                    CurrencyTextInputFormatter(
                      locale: "pt_BR",
                      symbol: "",
                      decimalDigits: 2,
                      turnOffGrouping: true,
                    )
                  ],
                  validator: (value) => value == null || value.isEmpty
                      ? "Campo de altura vazio"
                      : null,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      var formValidate = formKey.currentState!.validate();

                      if (formValidate) {
                        var formatter = NumberFormat.simpleCurrency(
                          locale: "pt_BR",
                          decimalDigits: 2,
                        );
                        var peso =
                            formatter.parse(_pesoController.text) as double;
                        var altura = formatter
                            .parse(_alturaController.text.toString()) as double;

                        controller.calculaImc(peso: peso, altura: altura);
                      } else {}
                    },
                    child: Text("Calcular Changes"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
