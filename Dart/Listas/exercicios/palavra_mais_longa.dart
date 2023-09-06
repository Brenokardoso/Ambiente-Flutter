// ignore_for_file: unused_import

import 'dart:io';

main() {
  var tamPalavra;
  var palavra;
  List<String> PalvrasGrandes = [
    "abacate",
    "melancia",
    "brigadeiro",
    "pneumoultramicroscopicsilicovulcanoconiose",
    "anticonstitucionalissimamente",
    "eletroencefalografista",
    "paralelepípedo",
    "pneumoultramicroscópicossilicovulcanoconiótico"
  ];
  for (var x in PalvrasGrandes) {
    for (var y in PalvrasGrandes) {
      if (x.length > y.length) {
        print("[X] = $x > [Y] = $y");
        tamPalavra = x.length;
        palavra = x;
      } else {
        continue;
      }
    }
  }
  print("A maior palavra:${palavra} teve ${tamPalavra} letras");
}
