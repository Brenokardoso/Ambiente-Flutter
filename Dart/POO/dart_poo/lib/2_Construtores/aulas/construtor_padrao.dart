// ignore_for_file: unused_import, non_constant_identifier_names

import 'dart:io';

class Animal {
  String? nome;
  String? especie;
  int? idade;
  double? peso;
  String? cor;

  Animal(this.nome, this.especie, this.idade, this.peso, this.cor);
}

void main() {
  print("Este é meu cachorro,olhe as especificações dele:");
  var meu_cacharro = Animal("Rex", "Doberman", 3, 15.8, "pretinho");
  print(""" 
  Nome:${meu_cacharro.nome}
  Especie:${meu_cacharro.especie}
  Idade:${meu_cacharro.idade}
  Peso:${meu_cacharro.peso}
  Cor:${meu_cacharro.cor}
  """);
}
