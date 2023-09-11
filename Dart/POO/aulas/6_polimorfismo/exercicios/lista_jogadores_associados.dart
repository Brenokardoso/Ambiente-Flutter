// ignore_for_file: unused_import

import 'dart:io';

// Agregação Básica: Crie uma classe Time que tenha uma lista de jogadores.
// Os jogadores devem ser objetos da classe Jogador. Mostre como você pode agregar jogadores em um time.

class Jogadores {
  String nome;
  int numero_da_camisa;

  Jogadores(String name, int tshirt_number)
      : nome = name,
        numero_da_camisa = tshirt_number;
}

class Time {
  static final nome_do_time = "REMO";
  List<Jogadores> jogadores = [];

  adicionaJogador(String nome, int numero_da_camisa) {
    jogadores.add(Jogadores(nome, numero_da_camisa));
  }

  mostraTime() {
    for (var jogador in jogadores) {
      print(
          "O jogador ${jogador.nome} de numero ${jogador.numero_da_camisa} entra em campo");
    }
  }
}

void main() {
  var time = Time();
  time.adicionaJogador('Breno', 99);
  time.adicionaJogador('Maria', 7);
  time.adicionaJogador('João', 23);
  time.adicionaJogador('Carla', 12);
  time.adicionaJogador('Pedro', 5);
  time.adicionaJogador('Ana', 17);
  time.adicionaJogador('Luiz', 8);
  time.adicionaJogador('Sara', 21);
  time.adicionaJogador('Rafael', 10);
  time.adicionaJogador('Laura', 19);
  time.adicionaJogador('Felipe', 14);
  time.adicionaJogador('Isabela', 3);

  time.mostraTime();
}
