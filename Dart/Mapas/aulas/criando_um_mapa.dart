// ignore: unused_import
import 'dart:io';


void main(){
  print("Faça a declaraçã odo seu mapa");
  Map <String,dynamic> dados = {};
  dados["nome"] = "breno";
  dados["idade"] = 21;
  dados["cpf"] = 014258987 ;
  dados["peso"] = 58;
  dados["altura"] = 1.70;

  print(dados.keys);
  print(dados.values);
  print(dados.containsKey('nome'));
  print(dados.containsValue("breno"));
  print(dados);
}