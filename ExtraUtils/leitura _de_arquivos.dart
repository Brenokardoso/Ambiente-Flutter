import 'dart:io';

Future<void> LearArquivo(String path) async {
  try {
    final arquivo = File(path);
    // final conteudo = await arquivo.readAsLines();
    final conteudo = await arquivo.readAsLinesSync();
    for (var linhas in conteudo) {
      print(linhas);
      var celula = linhas.split(' ');
      for (var data in celula) {
        print(data);
      }
    }
  } catch (e) {
    print("Ocorreu o erro de $e");
  }
}

void main() {
  const String caminho = ("projeto/lib/Dart/Lista dos exercicios.txt");
  LearArquivo(caminho);
}
