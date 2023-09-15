// ignore_for_file: unused_import

import 'dart:io';

// Crie uma classe Ponto com atributos x e y. Implemente um inicializador que defina x e y como zero se não forem fornecidos no construtor. Crie um objeto Ponto sem fornecer valores e exiba suas coordenadas.
class Pontos {
  int x;
  int y;

  Pontos({int x = 0, int y = 0}) //inicializador personalizado
      : x = x,
        y = y;

  mostraPontos() => print("X = $x Y = $y");
}

void main() {
  var pontos = Pontos();
  pontos.mostraPontos();
}
