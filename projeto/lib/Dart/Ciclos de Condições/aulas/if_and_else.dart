import 'dart:io';

void main(){
  print("Digite o primeiro nome");
  String? nome1 = stdin.readLineSync();
  print("Digie o segundo nome");
  String? nome2 = stdin.readLineSync();
  print("Digite o Terceiro nome");
  String? nome3 = stdin.readLineSync();


  if(nome1 == nome2){
    print("O nomes $nome1 e o $nome2 são iguais");
  }
  else if(nome1 == nome3){
    print("Os nomes $nome1 e o $nome3 são iguais");
  }
  else if (nome2 == nome3){
   print("Os nomes $nome2 e $nome3 são iguais");
  }
  else{
    print("Nenhum dos nomes é igual");
  }

}