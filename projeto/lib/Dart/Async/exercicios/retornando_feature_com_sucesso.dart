// ignore_for_file: unused_import

import 'dart:io';

// Retorno com sucesso
Future<String> retornaSucesso() async {
  return Future.delayed(Duration(seconds: 2),
      () => "Olá amigo, a sua função retornou com sucesso");
}

// Retorno sem sucesso
Future<String> retornaMasSemSucesso() async {
  return Future.delayed(Duration(seconds: 2), () {
    throw Exception();
  });
}

void main() {
  var sucesso = retornaSucesso();
  sucesso.then((value) => print(value));
}
