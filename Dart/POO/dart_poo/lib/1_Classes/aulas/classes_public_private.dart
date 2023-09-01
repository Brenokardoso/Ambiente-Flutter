// ignore_for_file: prefer_final_fields, unused_field

import 'dart:io';

class Banco {
  // atributos da classe
  static const String nomeDoBanco = "Banco do Brasil";
  static int numeroDoBanco = 40028922;
  // métodos da classe
  retornaNomeBanco() => nomeDoBanco;
  var numeroBanco = (int arg1, int arg2) => print("ok");

  // atributos da Instância da classe
  int? numeroDaConta;
  String? nomeDoDonoDaConta;
  int? saldoDaConta = 1000;
  int? _dividaNoBanco = 300; //atributo privado (get/setters)
  
  // Métodos da classe
  int? mostraSalario(int? arg1) => numeroDaConta;
  // GET E SET
  int? get dividaNoBanco => _dividaNoBanco;
  set dividaNoBanco(int? dividaNoBanco) {
    if (dividaNoBanco == null) {
      print("O campo está vazio!");
    } else {
      if (dividaNoBanco <= 0) {
        print("Sem dividas");
        throw Exception("Vocẽ n tá devendo n fihh");
      } else {
        print("A sua divida é de ${_dividaNoBanco}");
      }
    }
  }
}

void main() {
  print("Digite o nome do Dono da conta:");
  var banco = Banco();
  banco.nomeDoDonoDaConta = stdin.readLineSync().toString();
  print("Digite o numero da conta");
  banco.numeroDaConta = int.parse(stdin.readLineSync().toString());
  print("O saldo da conta é de ${banco.saldoDaConta}");
  print(banco.dividaNoBanco);
}
