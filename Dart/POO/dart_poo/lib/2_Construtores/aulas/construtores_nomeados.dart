// ignore_for_file: unused_import

import 'dart:io';

class Retangulo {
  double altura;
  double largura;

  Retangulo.quadrado(double lado1, double lado2)
      : altura = lado1,
        largura = lado2;

  calculaArea(double l1, double l2) => print(l1 * l2);
}

void main() {
  var quadrado = Retangulo.quadrado(10, 32);
  quadrado.calculaArea(quadrado.altura, quadrado.largura);
}
