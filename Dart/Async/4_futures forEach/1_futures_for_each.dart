import 'dart:io';

Future<String> funcaoSaudacao(String nome) {
  return Future.delayed(Duration(seconds: 3), () => "Olá $nome");
}

Future<void> main() async {
  // forma direta

  List<String> lista = ["Breno", "Lucas", "Higor"];
  print("Incio");
  // lista.forEach((nome) async {
  //   print(await funcaoSaudacao(nome));
  // });

  // forma indireta

  // Future.forEach(lista, (nomes) {
  // funcaoSaudacao(nomes);
  // });

  // forma indireta sincrona

  for (var nome in lista) {
    print("Opa");
    print(await funcaoSaudacao(nome));
    print("Volte sempre");
    print("\n");
  }

  var listaDeNomes = lista.map((nome) => funcaoSaudacao(nome)).toList();

  // wait == Carregamento em paralelo
  var saudacoes = await Future.wait(listaDeNomes);
}
