import 'dart:convert';

class Cidade {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ibge;
  final String gia;
  final String ddd;
  final String siafi;

  Cidade(
      {required this.cep,
      required this.logradouro,
      required this.complemento,
      required this.bairro,
      required this.localidade,
      required this.uf,
      required this.ibge,
      required this.gia,
      required this.ddd,
      required this.siafi});

  factory Cidade.palmas(Map<String, dynamic> mapa) {
    return Cidade(
      cep: mapa["cep"] ?? "",
      logradouro: mapa["logradouro"] ?? "",
      complemento: mapa["complemento"] ?? "",
      bairro: mapa["bairro"] ?? "",
      localidade: mapa["localidade"] ?? "",
      uf: mapa["uf"] ?? "",
      ibge: mapa["ibge"] ?? "",
      gia: mapa["gia"] ?? "",
      ddd: mapa["ddd"] ?? "",
      siafi: mapa["siafi"] ?? "",
    );
  }

  factory Cidade.fromJson(String arquivo) => Cidade.palmas(jsonDecode(arquivo));

  Map<String, dynamic> toMap() {
    return {
      "cep": cep,
      "logradouro": logradouro,
      "complemento": complemento,
      "bairro": bairro,
      "localidade": localidade,
      "uf": uf,
      "ibge": ibge,
      "gia": gia,
      "ddd": ddd,
      "siafi": siafi
    };
  }

  String toJson() => jsonEncode(toMap());
}
