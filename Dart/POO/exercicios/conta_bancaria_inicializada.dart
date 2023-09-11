// ignore_for_file: unused_import

import 'dart:io';

// Crie uma classe ContaBancaria com um atributo saldo. Implemente um inicializador de campo que atribui um saldo mínimo de 0 se o saldo fornecido for negativo.
class ContaBancaria {
  int saldo;

  ContaBancaria(int saldo) : saldo = saldo < 0 ? 0 : saldo;
  mostraSaldo() => print("$saldo");
}

void main() {
  var conta = ContaBancaria(-50);
  conta.mostraSaldo();
}
