// ignore_for_file: unused_local_variable

import "dart:io";

// Função padrão
int contras_letras(String? nome){
  nome ??= null;
  if(nome == null){
    return 0;
  }
  else{
  var tam_nome = nome.length;
  return tam_nome;
}
}

int multiplica_letras_grande(int? num1, int? num2){
  num1 ??= 0;
  num2 ??= 0;
  int soma = num1 * num2;
  return soma;
}

int multiplica_valores_pequeno(int arg1, int arg2) => (arg1 * arg2); 


void main(){
  print("Digite um nome para saber quantas letras ele tem!");
  String? nome = stdin.readLineSync().toString();
  var tam_nome = contras_letras(nome);
  print("O numero de letras em $nome é de $tam_nome");
  print(tam_nome.runtimeType);
  print("Digite um numero para multiplicar pelo numero de letras de $nome");
  var mult = int.parse(stdin.readLineSync().toString());
  var x = multiplica_letras_grande(tam_nome,mult);
  print("O tamnho multiplicado foi de $x");
  var y  = multiplica_valores_pequeno(tam_nome,mult);
  print("O tamnho multiplicado foi de $y");
 
}