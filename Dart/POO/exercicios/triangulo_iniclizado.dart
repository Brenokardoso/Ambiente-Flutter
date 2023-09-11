// ignore_for_file: unused_import

import 'dart:io';

// Defina uma classe Triangulo com atributos base e altura. Use um inicializador de lista para garantir que base e altura sejam positivos.

class Triangulo {
  num altura;
  num area_base;

  Triangulo(num altura, num area_base)
      : altura = altura > 2 ? altura : 0,
        area_base = area_base > 2 ? area_base : 0;

  areaTriangulo() => (area_base * altura) / 2;
}

void main() {
  var triangulo = Triangulo(10, 5);
  var area = triangulo.areaTriangulo();
  print(area);
}
