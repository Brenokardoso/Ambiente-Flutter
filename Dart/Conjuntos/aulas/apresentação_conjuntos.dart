// ignore_for_file: unused_import

import "dart:io";

void main(){
  Set <String> lista_de_compras = {};
  lista_de_compras.add("arroz");
  lista_de_compras.add("feijão");
  lista_de_compras.add("carne");
  lista_de_compras.add("cerveja");
  lista_de_compras.remove("feijão");
  lista_de_compras.add("cerveja");

  print(lista_de_compras);


}