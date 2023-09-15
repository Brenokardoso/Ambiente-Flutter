// ignore_for_file: unused_import

import 'dart:io';

class Animal {
  void fazBarulho() {
    print("O animal fará um som");
  }
}

class Cachorro extends Animal {
  @override
  fazBarulho() {
    print("Sons de latido");
  }
}

class Gato extends Animal {
  @override
  fazBarulho() {
    print("Sons de miado");
  }
}

class Zoologico {
  final List<Animal> zoo = [];
  adcionaAnimal(Animal animal) {
    zoo.add(animal);
  }

  void fazerBarulho() {
    for (var animal in zoo) {
      animal.fazBarulho();
    }
  }
}

void main() {
  final zoologico = Zoologico();
  zoologico.adcionaAnimal(Cachorro());
  zoologico.adcionaAnimal(Gato());

  zoologico.fazerBarulho();
}
