// ignore_for_file: unused_import, unused_local_variable

import "dart:io";

inverteOrdem(List<String> nomes) {
  List<String> invertida = [];
  for (var i = nomes.length - 1; i >= 0; i--) {
    var ultimoNome = nomes.last;
    invertida.add(ultimoNome);
    nomes.remove(ultimoNome);
  }
  
  return invertida;
}

void main() {
  List<String> frutas = [
    "Maçã",
    "Banana",
    "Morango",
    "Uva",
    "Pera",
    "Laranja",
    "Abacaxi",
    "Melancia",
    "Kiwi",
    "Manga",
    "Cereja",
    "Pêssego",
    "Goiaba",
    "Abacate"
  ];
  var x = inverteOrdem(frutas);
  print(x);
}
