// ignore_for_file: file_names
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:projeto/Dart/Async/aulas/7_modelos/aulas/cidade.dart';

Future<void> buscaCep() async {
  var uri = 'https://viacep.com.br/ws/01001000/json/';
  var response = await http.get(Uri.parse(uri));
  var responseInJson = jsonDecode(response.body);
  if (response.statusCode >= 200 && response.statusCode <= 300) {
    var cidade = Cidade.fromJson(response.body);
    print(cidade);
    
  }
}

Future<void> main() async {
  await buscaCep();
}
