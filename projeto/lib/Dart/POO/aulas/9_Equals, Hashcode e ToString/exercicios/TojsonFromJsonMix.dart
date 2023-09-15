import 'dart:convert';

mixin ToJsonFromJsons {
  String toJson(var dado) {
    var jsons = jsonEncode(dado);
    return jsons;
  }

  Map<dynamic, dynamic> fromJson(String dado) {
    var jsons = jsonDecode(dado);
    return jsons;
  }
}

class Compras with ToJsonFromJsons {
  Map<dynamic, dynamic> dicio = {};

  void adcionaItem(String chave, String valor) {
    dicio[chave] = valor;
  }
}

void main() {
  var compras = Compras();
  compras.adcionaItem("cenoura", "10");
  compras.adcionaItem("batata", "20");
  compras.adcionaItem("beterraba", "90");

  var arquivosIda = compras.toJson(compras.dicio);
  print(arquivosIda);

  var arquivosVolta = compras.fromJson(arquivosIda);
  print(arquivosVolta);
}
