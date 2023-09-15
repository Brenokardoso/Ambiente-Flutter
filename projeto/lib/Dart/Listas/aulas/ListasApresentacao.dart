// Trabalhando com listas

// ignore_for_file: unused_import

import 'dart:io';

void main(){
  List <int> numeros = [1,2,3];
  numeros.add(4); //adciona um valor ao final da lista
  numeros.insert(4,5); //adiciona um numero na lista,mas segue o padão de (posicao,valor)
  numeros.add(6);
  print(numeros);
  numeros.remove(1); //remove o numero
  numeros.removeAt(1); //remove o numero pelo indice
  numeros.removeLast(); //remove o ultimo numero da lista
  print(numeros);

  List <String> frutas = [];
  frutas.add("Banana");
  frutas.add("Graviola");
  frutas.add("Abacaxi");
  frutas.add("Laranja");
  print("Frutas:$frutas");
  print(frutas.last);
  print(frutas.first);
  print(frutas.elementAt(2));
  frutas.sort();
  print("Lista de Frutas =${frutas}");
}