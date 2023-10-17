// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/blocpartterner/imc_block_partter_cotroler.dart';
import 'package:flutter_default_state_manager/blocpartterner/imc_state.dart';
import 'package:flutter_default_state_manager/widgets/imc_gauge_arvore.dart';
import 'package:intl/intl.dart';

class ImcBlockPartterner extends StatefulWidget {
  const ImcBlockPartterner({super.key});

  @override
  State<ImcBlockPartterner> createState() => _ImcBlockPartternerState();
}

class _ImcBlockPartternerState extends State<ImcBlockPartterner> {
  double imc = 0.0;
  final _pesoController = TextEditingController();

  final _alturaController = TextEditingController();

  final _controller = ImcBlockControler();

  var formKey = GlobalKey<FormState>();

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
        title: Text("Block Partterner"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                StreamBuilder<ImcState>(
                  stream: _controller.imcOut,
                  builder: (ctx, snapshot) {
                    imc = snapshot.data?.imc ?? 0;
                    return RadialFormsGauge(imc: imc);
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

                        _controller.calcularImc(peso: peso, altura: altura);
                      } else {}
                    },
                    child: Text("Calcular Imc"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
