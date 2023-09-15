// ignore_for_file: unused_import

import 'dart:io';

class Forma {
  int calcularArea(int base, [int? altura]) {
    print("Calcula a área de uma figura geométrica");
    return base * (altura ?? 1); // Usei ?? para lidar com altura opcional.
  }
}

class Circulo extends Forma {
  @override
  int calcularArea(int raio, [int? altura]) {
    var area = 3 * (raio * raio);
    return area;
  }
}

class Quadrado extends Forma {
  @override
  int calcularArea(int base, [int? altura]) {
    var area = base * (altura ?? base);
    return area;
  }
}

void main() {
  var circulo = Circulo();
  var areaCirculo = circulo.calcularArea(5);
  print("Área do círculo: $areaCirculo");

  var quadrado = Quadrado();
  var areaQuadrado = quadrado.calcularArea(4,5);
  print("Área do quadrado: $areaQuadrado");
}
