// ignore_for_file: unused_import

import 'dart:io';

class Pessoa {
  Pessoa(this._nome);
  late String _nome;

  String get nome {
    return _nome;
  }

  set nome(String nomeclatura) {
    _nome = nomeclatura;
  }

  String toString() => "nome : $nome";
}

void main() {
  var pessoa = Pessoa("");
  pessoa.nome = "breno";
  print(pessoa.nome);
  pessoa._nome = "ok";
  print(pessoa.nome);
}
