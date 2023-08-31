// ignore_for_file: unused_import

import 'dart:io';

// Funções Sem Retorno
void saudadacao(){
  print("Olá amigo eu sou o joão!");
}
// Funções com retorno
String? cumprimenta_com_nome(String? nome){
  return nome;
}

//funções do tipo arrow





void main(){
  saudadacao();
  print("Digite seu nome para cumprimentar o colega:");
  var nome = stdin.readLineSync().toString();
  print("Boa tarde pra você tambem meu caro amigo me chamo ${cumprimenta_com_nome(nome)}");


}