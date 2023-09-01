// ignore_for_file: non_constant_identifier_names

import 'dart:io';

// import 'package:dart_poo/1_Classes/aulas/camiseta.dart';

class Contabancaria {
  //Atributo da classe
  static String? nome_do_banco = "Caixa";

  // Constante atribuida à um atributo da classe
  static const int numeroDaBanco = 40028922;

  //Atributos da Instância da classe
  int? numero_da_conta;
  String? dono_da_conta;
  double? saldo_da_conta;

  String? verifica_saldo(double? saldo) {
    if ((saldo == null)) {
      print("Não existe dinherio nenhum nessa conta de pobre");
    } else {
      print("Voce tem dinheiro,um total de $saldo");
    }
    return "";
  }

  static String? bancos_names() => nome_do_banco;
  static int numeroBanco() => numeroDaBanco;
}

void main() {
  var contabancaria = Contabancaria();
  print(contabancaria.saldo_da_conta.runtimeType);
  print("Nome do banco : ${Contabancaria.nome_do_banco}");
  print(Contabancaria.numeroBanco());
  print("Digite o nome do Dono da conta");
  contabancaria.dono_da_conta = stdin.readLineSync().toString();

  print("Digite o numero de serie da conta");
  contabancaria.numero_da_conta = int.parse(stdin.readLineSync().toString());

  print("Digite o saldo existente nessa conta");
  contabancaria.saldo_da_conta = double.parse(stdin.readLineSync().toString());

  print(contabancaria.saldo_da_conta);
  contabancaria.verifica_saldo(contabancaria.saldo_da_conta);
}
