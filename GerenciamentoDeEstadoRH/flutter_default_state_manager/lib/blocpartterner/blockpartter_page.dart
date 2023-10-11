// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field

import 'dart:math';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/blocpartterner/block_controller.dart';
import 'package:flutter_default_state_manager/blocpartterner/imc_state.dart';
import 'package:flutter_default_state_manager/widgets/imc_gauge_arvore.dart';
import 'package:flutter_default_state_manager/widgets/imc_gauge_range.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class BlocPartterImc extends StatefulWidget {
  const BlocPartterImc({super.key});

  @override
  State<BlocPartterImc> createState() => _BlocPartterImc();
}

class _BlocPartterImc extends State<BlocPartterImc> {
  final _controller = BlockControllerImc();
  final _pesoController = TextEditingController();
  final _alturaController = TextEditingController();
  var imc = 0.0;
  var pesoTeste = 0.0;
  var alturaTeste = 0.0;
  var formKey = GlobalKey<FormState>();

  Future<void> calculaIMC(
      {required double peso, required double altura}) async {
    setState(() {
      imc = 0.0;
    });
    await Future.delayed(Duration(seconds: 1, milliseconds: 500));
    setState(() {
      imc = peso / pow(altura, 2);
    });
  }

  @override
  void dispose() {
    _alturaController.dispose();
    _pesoController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("BlocPartterImc"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                StreamBuilder<ImcState>(
                  stream: null,
                  builder: (context, snapshot) {
                    var imc = 0.0;
                    if (snapshot.hasData) {
                      imc = snapshot.data!.imc;
                      return RadialFormsGauge(imc: imc);
                    } else {
                      return throw Exception("Ocoreu um erro");
                    }
                  },
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

                        calculaIMC(peso: peso, altura: altura);
                      } else {}
                    },
                    child: Text("Calcular imc"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
