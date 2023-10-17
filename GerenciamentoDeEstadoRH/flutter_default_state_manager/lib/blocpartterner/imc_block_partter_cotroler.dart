// ignore_for_file: prefer_final_fields, unused_field, prefer_const_constructors

import 'dart:async';
import 'dart:math';

import 'package:flutter_default_state_manager/blocpartterner/imc_state.dart';

class ImcBlockControler {
  final _imcStreamCOntroller = StreamController<ImcState>()
    ..add(ImcState(imc: 0.0));
  Stream<ImcState> get imcOut => _imcStreamCOntroller.stream;

  Future<void> calcularImc(
      {required double peso, required double altura}) async {
    _imcStreamCOntroller.add(ImcState(imc: 0.0));
    await Future.delayed(Duration(seconds: 1));
    final imc = peso / pow(altura, 2);
    _imcStreamCOntroller.add(ImcState(imc: imc));
  }

  void dispose() {
    _imcStreamCOntroller.close();
  }
}
