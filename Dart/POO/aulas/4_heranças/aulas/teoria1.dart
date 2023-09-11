// ignore: unused_import
import "dart:io";

class Animal {
  String nome;

  Animal(this.nome);

  mostraNome() {
    print("$nome usa seu barulho natural");
  }
}

class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);

  mostraFelicidade() => print("$nome esta feliz");
}

void main() {
  var dog = Cachorro("Rex");

  dog.mostraNome();
  dog.mostraFelicidade();
}
