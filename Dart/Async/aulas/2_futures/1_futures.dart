// ignore_for_file: unused_import

import 'dart:io';

Future<void> retornaFuturo() async {
  Future.delayed(Duration(seconds: 3), () {
    for (var i = 0; i < 4; i++) {
      print(i);
    }
    print("Fim de P2");
  });
}

// Concluído com sucesso, tipo de retorno: completo
Future<String> retornaFuturo2() async {
  print("Início de P3");
  return Future.delayed(Duration(seconds: 4), () => "Fim de P3");
}

// Correção: Corrigido o nome da função para "retornaFuturo3" e adicionado um comentário.
Future<String> retornaFuturo3() async {
  print("Início de P4");
  return Future.delayed(Duration(seconds: 3),
      () => throw Exception("Ação concluída, porém sem sucesso"));
}

Future<void> retornaFuturo4() async {
  print("Início de P5"); // Correção: Corrigido "Incio" para "Início"
  return Future.delayed(Duration(seconds: 3), () => "Fim de P5"); // Correção: Adicionado parênteses e mensagem correta.
}

void main(List<String> args) {
  print("Início de P1");
  print("Início de P2");
  retornaFuturo();
  retornaFuturo2().then((value) => print(value),
      onError: (erro) => print("Tratando o erro pelo onError"));
  // retornaFuturo3().catchError((erro) => print(erro));
  retornaFuturo4().whenComplete(() => print("Concluído com sucesso")); // Correção: Mensagem corrigida.
  print("Fim de P1");
}
