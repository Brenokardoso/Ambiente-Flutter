import 'dart:io';

Future<String> leitorDeArquivos(String path) async {
  var caminho = path;
  var arquivo = File(path);
  var linhasEscritas = await arquivo.readAsLinesSync();
  Future(() {
    return linhasEscritas;
  });

  return Future(() => "");
}

void main() {
  print("Começa");
  leitorDeArquivos("Lista dos exercicios.txt");
  print("acaba");
}
