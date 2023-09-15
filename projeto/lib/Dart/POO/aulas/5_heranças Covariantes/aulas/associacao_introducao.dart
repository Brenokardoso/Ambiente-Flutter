// ignore_for_file: unused_import

import 'dart:io';

class Estudante {
  String? nome;

  Estudante(this.nome);
}

class SalaDeAula {
  final List<Estudante> estudantes = [];

  adicionaEstudante(Estudante estudante) => estudantes.add(estudante);

  mostraEstudantes() {
    for (var estudante in estudantes) {
      print(estudante);
    }
  }
}

void main() {
  var sala = SalaDeAula();
  sala.adicionaEstudante(Estudante("breno"));
  sala.mostraEstudantes();
}
