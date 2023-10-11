// ignore_for_file: unused_local_variable, non_constant_identifier_names, prefer_const_constructors, unused_import

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_default_state_manager/blocpartterner/imc_state.dart';

class BlockControllerImc {
  final _imcStreamController = StreamController<ImcState>()
    ..add(ImcState(imc: 0));
  Stream<ImcState> get imcOut => _imcStreamController.stream;

  Future<void> CalcularImc(
      {required double peso, required double altura}) async {
    _imcStreamController.add(ImcState(imc: 0));
    await Future.delayed(Duration(seconds: 1));
    final imc = peso / pow(altura, 2);
    _imcStreamController.add(ImcState(imc: imc));
  }

  void dispose() {
    _imcStreamController.close();
  }
}
