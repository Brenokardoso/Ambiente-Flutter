import 'dart:io';

void main(){
  
  print("Digite o numero que irá decrescer até o zero!");

  int numero = int.parse(stdin.readLineSync().toString());

  for(int i = numero; i > 0; i--){
    print("o numero $i");
  }
}