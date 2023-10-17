// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class ImcChangeNotifierController extends ChangeNotifier {
  var imc = 0.0;

  Future<void> calculaImc(
      {required double peso, required double altura}) async {
    imc = 0.0;
    notifyListeners();
    Future.delayed(Duration(seconds: 1));
    imc = peso / pow(altura, 2);
    notifyListeners();
  }
}
