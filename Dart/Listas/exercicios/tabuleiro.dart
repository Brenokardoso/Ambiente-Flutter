import "dart:ffi";
import "dart:io";

//  (Médio) Desenvolva um programa que simule um jogo de tabuleiro onde os jogadores podem mover suas peças em um tabuleiro representado por uma lista multidimensional.

posicionaJogador(List<List<int>> matriz, int linha, int coluna) {
  for (var i = 0; i < 8; i++) {
    for (var j = 0; j < 8; j++) {
      if ((i == linha) && (j == coluna)) {
        matriz[i][j] = 42;
      }
    }
  }
  return matriz;
}

void main() {
  List<List<int>> matriz = List.generate(8, (_) => List.filled(8, 0));
  posicionaJogador(matriz, 3, 4);

  for (var i = 0; i < 8; i++) {
    print(matriz[i]);
  }
}
