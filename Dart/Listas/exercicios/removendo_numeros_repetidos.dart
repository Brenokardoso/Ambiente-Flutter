import 'dart:io';

void main(){
  List <int> numeros = [1,1,2,2,2,3,3,4,5,6,6,6,6,6,7,8,9,10,10];

  for(var i = numeros.length - 1; i > 0 ; i--){
    var j = i -1;
    if(numeros[i] == numeros[j]){
      numeros.remove(numeros[j]);
      print(numeros);
    }
  }
}