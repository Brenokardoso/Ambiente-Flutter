// ignore_for_file: unused_import

import 'dart:convert';
import 'dart:io';

void main() {
  Map<String, int> NumeroDePalavras = {
    'exemplo': 0,
    'palavra': 0,
    'texto': 0,
    'contagem': 0,
    'arquivo': 0,
    'programação': 0,
    'desenvolvimento': 0,
    'linguagem': 0,
  };

  Future<void> ContaPalavras(String path) async {
    String caminho = path;
    var arquivo = File(caminho);
    final linhas = await arquivo.readAsLines();

    for (var linha in linhas) {
      final palavras = linha.split(' ');

      for (var dado in palavras) {
        var contagem =
            NumeroDePalavras[dado] ?? 0; // Obtém a contagem atual da palavra

        if (NumeroDePalavras.containsKey(dado)) {
          NumeroDePalavras[dado] = contagem + 1; // Incrementa a contagem
        }
      }
    }
  }

  ContaPalavras("historia.txt");
  print(NumeroDePalavras);
}
