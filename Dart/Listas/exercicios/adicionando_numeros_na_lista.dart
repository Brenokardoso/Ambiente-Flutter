import 'dart:io';

void main(){
  List <int> numeros = [];
  numeros.add(1);
  numeros.add(10);

  List <String> frutas = ["banana","limão","laranja","jaca","pera","uva"];
  frutas.remove(frutas.last);
  print(frutas);


}