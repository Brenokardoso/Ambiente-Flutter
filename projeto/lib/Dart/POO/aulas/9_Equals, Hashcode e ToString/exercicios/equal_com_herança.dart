// ignore_for_file: unused_import

import 'dart:math';

abstract class Animal {
  late String nome;
  late int idade;
}

class Cachorro extends Animal {
  late String raca;
  int codigo = 0;

  Cachorro(String name, int age, String type) {
    this.nome = name;
    this.idade = age;
    this.raca = type;
  }

  getHashCode(Cachorro obj) {
    codigo = obj.codigo;
    codigo = obj.nome.hashCode ^ obj.idade.hashCode ^ obj.raca.hashCode;
    obj.codigo = codigo;
    return obj.codigo;
  }

  comparaCachoro(Cachorro dog1, Cachorro dog2) {
    if (identical(dog1, dog2) == true) {
      print("Os cachorros ${dog1.nome} e ${dog2.nome} são iguais");
    } else {
      print("Os cachorros ${dog1.nome} e ${dog2.nome} são diferentes");
    }
  }

  String toString() => ("""
                        nome : $nome
                        idade : $idade
                        raça : $raca
                        codigo : $codigo
                        """);
}

void main() {
  var dg1 = Cachorro("rex", 3, "salsicha");
  var dg2 = Cachorro("belinha", 6, "puddle");
  var dg3 = Cachorro("rex", 3, "salsicha");
  var compara = Cachorro("", 0, "");
  dg1.getHashCode(dg1);
  dg2.getHashCode(dg2);
  dg3.getHashCode(dg3);
  print(dg1);
  print(dg2);
  print(dg3);
  compara.comparaCachoro(dg1, dg3);
}
