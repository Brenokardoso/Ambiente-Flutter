// class Animal{
abstract class Animal {
  double? tamanho;
  int? idade;
  int? idadeHumanaBase;

  int? recuperarIdade() => idade;

  double? converteIdadeAnimal(int? idadeAnimal) {
    double? idadeHumanaDoAnimal = idadeAnimal! / 6;
    return idadeHumanaDoAnimal;
  }
}

class Cachorro extends Animal {
  String? nome;
  String? cor;

  @override
  int? recuperarIdade() {
    idade = 400;
    return super.recuperarIdade();
  }
}

void main() {
  var cachorro = Cachorro();
  print(cachorro.recuperarIdade());
}
