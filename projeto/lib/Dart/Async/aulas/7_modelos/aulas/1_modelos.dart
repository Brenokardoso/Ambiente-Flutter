// ignore_for_file: unused_local_variable

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:projeto/Dart/Async/aulas/7_modelos/aulas/cidade_modelo.dart';
// ignore_for_file: file_names

Future<void> buscaCep() async {
  // receba sua requisição Http
  var uri = "https://viacep.com.br/ws/01001000/json/";

  // Transforme o link da sua requisção em URI(URL + URN)
  // o mesmo vira uma HttpClienteResponse
  // ela tem os métodos de StatusCode,Body e Headers
  var response = await http.get(Uri.parse(uri));
  var status = response.statusCode;
  var body = response.body;

  // Trabalhe com a sua requição e o tipo de retorno desejado
  if (response.statusCode == 200) {
    var cidade = Cidade.fromJson(body);
    print(cidade);
  }
}

void main() {
  buscaCep();
}
