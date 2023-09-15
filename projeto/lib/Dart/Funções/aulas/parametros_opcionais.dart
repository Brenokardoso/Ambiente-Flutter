// ignore_for_file: unused_local_variable

import "dart:io";


void escreve_mensagem(String msg,{String? nome_viajante}){
  if(nome_viajante is String){
    print("$msg $nome_viajante");
  }
  else{
    print("$msg");
  }
}

void main(){

  print("Digite uma mensagem qualquer");
  var mensagem = stdin.readLineSync().toString();
  print("Digite para quem é esta mensagem");
  var pessoa = stdin.readLineSync().toString();
  escreve_mensagem(mensagem,nome_viajante: pessoa);

}