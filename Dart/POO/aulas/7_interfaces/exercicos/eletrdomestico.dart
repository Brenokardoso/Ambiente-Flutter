import 'dart:io';

// Crie uma interface `Eletrodomestico` com métodos como `ligar()`, `desligar()`, e `ajustarTemperatura()`.
// Implemente essa interface em classes como `Geladeira` e `ArCondicionado`.

abstract class EletroDomestico {
  void ligar();
  void desligar();
  void ajustarTemperatura();
}

class Geladeira implements EletroDomestico {
  @override
  void ligar() {
    print("A geladeira está ligada!");
  }

  @override
  void desligar() {
    print("A geladeira está desligada!");
  }

  @override
  void ajustarTemperatura() {
    print("Digite em quantos  graus você deseja ajustar a temperatura");
    var graus = int.parse(stdin.readLineSync().toString());
    print("A temperatuda da geladeira foi ajustada em :$graus graus C°!");
  }
}

class ArCondicionado extends EletroDomestico {
  @override
  void ligar() {
    print("O ar está ligado");
  }

  @override
  void desligar() {
    print("O ar está desligado");
  }

  @override
  void ajustarTemperatura() {
    print("Digite em quantos  graus você deseja ajustar a temperatura");
    var graus = int.parse(stdin.readLineSync().toString());
    print("A temperatuda do ar foi ajustada em :$graus graus C°!");
  }
}

void main() {
  var geladeira = Geladeira();
  var ar = ArCondicionado();

  geladeira.ligar();
  geladeira.desligar();
  geladeira.ajustarTemperatura();

  ar.ligar();
  ar.desligar();
  ar.ajustarTemperatura();
}
