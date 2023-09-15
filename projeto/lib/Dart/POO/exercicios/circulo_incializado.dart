// ignore_for_file: unused_import, unused_local_variable

import "dart:io";

// Defina uma classe Círculo com atributos raio e centro, onde centro é um objeto Ponto. Use um inicializador de lista para configurar esses atributos
// durante a criação de um objeto Círculo.

class Ponto {
  int x;
  int y;
  Ponto(this.x, this.y);
}

class Circulo {
  int raio;
  Ponto centro; // --> x && Y

  Circulo(this.raio, int x, int y) : centro = Ponto(x, y);

  mostraValroes() => print("O raio = $raio e os o centro $centro");
}

void main() {
  var ponto = Ponto(3, 7);
  var circulo = Circulo(5, 2, 3);
  circulo.mostraValroes();
}
