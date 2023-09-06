// ignore_for_file: unused_import, unnecessary_new, non_constant_identifier_names, unused_local_variable

import "dart:io";
import "camiseta.dart";

void main() {
  var camiseta_nike = new Camisa();
  camiseta_nike.cor = "preta";
  camiseta_nike.tamanho = "P";
  camiseta_nike.marca = "Nike";
  camiseta_nike.preco = 230;

  print(""" 
  A cor da camisa é ${camiseta_nike.cor}
  A o tamanho da camisa é de ${camiseta_nike.tamanho}
  A marca da camisa é ${camiseta_nike.marca}
  O preço final da camisa foi de ${camiseta_nike.preco}
  """);

  camiseta_nike.verifica_marca(camiseta_nike.marca);
}
