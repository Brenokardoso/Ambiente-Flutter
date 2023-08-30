import 'dart:io';
// import 'dart:ffi';


converte_string(string){
  stdout.write(string);
  int string_convertida = int.parse(string ?? 0);
  return string_convertida;
}

void main(){
  print("Digite o seu nome:");
  String? nome = stdin.readLineSync();
  print("Seja bem vindo $nome");
  stdout.write("Qual a sua idade $nome\n");
  String? idade = stdin.readLineSync();
  int string_trocada = converte_string(idade);
  var tipo_string_trocada = string_trocada.runtimeType;
  print("A string trocada ${string_trocada} do  tipo ${tipo_string_trocada}");

  // Calculadora:

}