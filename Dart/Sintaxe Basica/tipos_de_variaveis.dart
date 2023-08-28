// import 'dart:ffi';
import 'dart:io';

void main(){
  //Tipos de Variaveis:

  String nome = "Breno Cardoso de Castro Guimaraes";
  int idade = 21;
  double peso = 57.25;
  bool is_studanty = true;  
  print("O meu nome é $nome eu tenho $idade anos meu peso é de  $peso e eu sou um estudante?$is_studanty");

  // Funções aritimeticas e logicas
  double x = 10.0;
  double y  = 5.0;
  double soma = x + y;
  double subtracao = x - y;
  double divisao = x / y;
  double multiplicacao = x * y;
  bool compara1 = x != y;
  bool compara2 = x == y;
  print("A soma foi de $soma");
  print("A subtracao foi de $subtracao");
  print("A divisao foi de $divisao");
  print("A multiplicacao foi de $multiplicacao");
  print("A comparacao1 foi $compara1 e a comparaca2 foi de $compara2");

  //Entradas e saídas
  String? name = stdin.readLineSync();
  String? age1 = stdin.readLineSync();

  // var age2 = int.tryParse(age1?? "");
  // var age2 = age1 ?? 0;
  // var tipo_age2 = age2.runtimeType;
  var ages2 = int.tryParse(age1 ?? "");
  var tipo_ages2 = ages2.runtimeType;

  print("olá $name o tipo de $tipo_ages2 antes e o $tipo_ages2 depois");



}