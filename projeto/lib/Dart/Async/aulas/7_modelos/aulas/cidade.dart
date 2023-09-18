import 'dart:convert';

class Cidade {
  late final String cep;
  late final String logradouro;
  late final String complemento;
  late final String bairro;
  late final String localidade;
  late final String uf;
  late final String ibge;
  late final String gia;
  late final String ddd;
  late final String siafi;

  Cidade({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.localidade,
    required this.bairro,
    required this.uf,
    required this.ibge,
    required this.gia,
    required this.ddd,
    required this.siafi,
  });

  factory Cidade.fromMap(Map<String, dynamic> mapa) {
    return Cidade(
        cep: mapa["cep"] ?? "",
        logradouro: mapa["logradouro"] ?? "",
        complemento: mapa["complemento"] ?? "",
        localidade: mapa["localidade"] ?? "",
        bairro: mapa["bairro"] ?? "",
        uf: mapa["uf"] ?? "",
        ibge: mapa["ibge"] ?? "",
        gia: mapa["gia"] ?? "",
        ddd: mapa["ddd"] ?? "",
        siafi: mapa["siafi"] ?? "");
  }

  factory Cidade.fromJson(String source) {
    var jsonData = jsonDecode(source);
    return Cidade.fromMap(jsonData);
  }

  Map<String, dynamic> toMap() {
    return {
      "cep": cep,
      "logradouro": logradouro,
      "complemento": complemento,
      "localidade": localidade,
      "bairro": bairro,
      "uf": uf,
      "ibge": ibge,
      "gia": gia,
      "ddd": ddd,
      "siafi": siafi
    };
  }

  String toJson() => jsonEncode(toMap());

  String toString() => """
        cep : $cep, logradouro: $logradouro, complemento: $complemento, 
        localidade: $localidade, bairro: $bairro, uf: $uf, ibge: $ibge, 
        gia: $gia, ddd: $ddd, siafi: $siafi
    """;
}
