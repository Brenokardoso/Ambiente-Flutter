// ignore_for_file: unused_import

import 'dart:convert';
import 'dart:io';

mixin JSONmixin {
  String? toJson(var dado) {
    var json = jsonEncode(dado);
    return json;
  }
}

class ArquivoDeTexto with JSONmixin {
  Map<String, dynamic> arquivos = {};

  adcionaItemAoMapa(String chave, String valor) {
    arquivos[chave] = valor;
  }
}

void main() {
  var arquivo = ArquivoDeTexto();
  arquivo.adcionaItemAoMapa("crimes", "reais");
  arquivo.adcionaItemAoMapa("xo", "key");
  arquivo.adcionaItemAoMapa("num", "nintendo");
  var salvo = arquivo.toJson(arquivo.arquivos);
  print(salvo);
}
