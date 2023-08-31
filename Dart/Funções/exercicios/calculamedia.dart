// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

double soma_notas(List <double> notes){
  double notasTotais = 0;
  for(var note in notes){
    notasTotais += note;
  }
  print(notasTotais);
  return notasTotais;
}

double divideMedia(double total_notas,int numero_de_notas) => total_notas / numero_de_notas; 


void main(){
List <double> notas = [9.1, 7.2, 8.5, 6.7, 9.9];
var total_final = soma_notas(notas);
var tam_lista = notas.length;
print("O numero de alunos ${tam_lista}");
print("A soma de todas as notas foi de $total_final");
var media = divideMedia(total_final, tam_lista);
print(media);
if(media >= 7.0){
  print("Parabens,vocês são uma ótima turma!");
}
else{
  print("Estudem mais crianças!");
}

}