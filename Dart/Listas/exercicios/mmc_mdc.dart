import "dart:io";

void main(){
  var maior = 0;
  var menor = 100;
  List <int> numeros = [15, 4, 8, 21, 7, 10, 12, 43,0,23, 65,1, 4,5,7,];
  for(var i = numeros.length - 1; i > 0 ; i--){
    for(var j = numeros.length - 1; j >= 0 ; j--){
      if(numeros[i] > numeros[j]){
        if(numeros[i] > maior){
          maior = numeros[i];
        }
      }
      if(numeros[i] < numeros[j]){
        if(numeros[i] < menor){
          menor = numeros[i];
        }
      }
    }
    }
    print("O valor do maior == $maior");
    print("O valor do menor == $menor");
    }