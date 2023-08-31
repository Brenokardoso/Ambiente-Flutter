import 'dart:io';

class Contabancaria {
  int? numero_da_conta;
  String? dono_da_conta;
  double? saldo_da_conta;

  String? verifica_saldo(double? saldo) {
    if ((saldo == null)) {
      print("Não existe dinherio nenhum nessa conta de pobre");
    } else {
      print("Voce tem dinheiro,um total de $saldo");
    }
  }
}

void main() {
  var contabancaria = Contabancaria();
  print(contabancaria.saldo_da_conta.runtimeType);
  print("Digite o nome do Dono da conta");
  contabancaria.dono_da_conta = stdin.readLineSync().toString();

  print("Digite o numero de serie da conta");
  contabancaria.numero_da_conta = int.parse(stdin.readLineSync().toString());

  print("Digite o saldo existente nessa conta");
  contabancaria.saldo_da_conta = double.parse(stdin.readLineSync().toString());

  print(contabancaria.saldo_da_conta);
  contabancaria.verifica_saldo(contabancaria.saldo_da_conta);
}
