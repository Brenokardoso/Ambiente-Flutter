import 'dart:io';
import 'dart:math';

class Game {
  late num numeroParaSerAdvinhado;
  late List<Future<dynamic>> listaNumeros = [];

  Future<void> startGame() async {
    var numeroParaSerAdvinhado = Random().nextInt(6);
    print("Advinhe o numero que a maquina gerou\nfaça um chute de 0 a 100:");
    var chute = await int.parse(stdin.readLineSync().toString());
    if (chute == numeroParaSerAdvinhado) {
      print("Você advinhou o era o numero : $numeroParaSerAdvinhado");
    } else {
      print("Você não advinhou o numero era o : $numeroParaSerAdvinhado");
    }
    jogarNovamente();
  }

  Future<void> jogarNovamente() {
    print("Deseja jogar novamente? 1-sim | 2-não");
    var numeroDaEscolha = int.parse(stdin.readLineSync().toString());
    if (numeroDaEscolha == 1) {
      startGame();
    } else if (numeroDaEscolha == 2) {
      return Future(() => null);
    } else {
      print("numero invalido,digite novamente");
      return jogarNovamente();
    }
    return Future(() => null);
  }
}

void main() {
  var jogo = new Game();
  jogo.startGame();
}
