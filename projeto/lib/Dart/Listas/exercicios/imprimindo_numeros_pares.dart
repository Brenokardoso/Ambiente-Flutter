// ignore_for_file: unused_import

import 'dart:io';

void main(List<String> args) {
  List<int> listaDeNumeros = [];
  for (var x = 0; x <= 100; x++) {
    if (x > 0) {
      listaDeNumeros.add(x);
    } else {
      continue;
    }
  }
  
  String listaConcatenados = listaDeNumeros.join('|');
  print(listaConcatenados);
  // print(listaDeNumeros);
  for (var numero in listaDeNumeros) {
    if ((numero % 2) == 0) {
      print(numero);
    }
  }
}
