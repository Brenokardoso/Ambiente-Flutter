// ignore_for_file: unused_import

import 'dart:io';

void main(){
  Map <String,dynamic> produtos = {};
  produtos["nome"] = "Detergente-Ypê";
  produtos["quantidade"] = 15;
  produtos["preço"] = 2.15;

  for(var keys in produtos.keys){
    print("$keys : ${produtos[keys]}");
    
  }

  
 
}