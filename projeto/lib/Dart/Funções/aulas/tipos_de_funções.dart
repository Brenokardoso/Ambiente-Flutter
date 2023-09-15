// ignore_for_file: unused_import

import 'dart:io';

// Funções Sem Retorno e parametros
void saudadacao(){
  print("Olá amigo eu sou o joão!");
}
// Funções com retorno
String? cumprimenta_com_nome(String? nome){
  return nome;
}

//funções do tipo arrow
int soma(int x, int y) => (x + y);

// funções anonimas : declarações|chamadas --> parece uma varaivel com parametros escondidos
var multi = (int x ,int y){
  return x * y;
};

// funções complexas:
  //função de ordem superior
int operacao(int x,int y,Function(int,int) func){
  return func(x,y);
}

// chamada da função
int resultadosoma = (operacao(7, 3, (a, b) => a + b));
int resultadosub = (operacao(10, 5, (a, b) => a - b));






void main(){
  saudadacao();
  print("Digite seu nome para cumprimentar o colega:");
  var nome = stdin.readLineSync().toString();
  print("Boa tarde pra você tambem meu caro amigo me chamo ${cumprimenta_com_nome(nome)}");
  print(soma(15,25));

}