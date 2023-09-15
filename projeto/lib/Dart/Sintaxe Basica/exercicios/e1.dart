// import 'dart:ffi';
import 'dart:io';

// Faça um Programa que pergunte quanto você ganha por hora
// e o número de horas trabalhadas no mês. Calcule e mostre o total do seu salário no referido mês. 

calcula_trabalho(salario_hora,horas_trabalhadas,dias_trabalhados){
  int soma = ((salario_hora * horas_trabalhadas) * dias_trabalhados); 
  return soma;
}

void main(){
print("Digite o seu nome:");
String? nome = stdin.readLineSync();
print("Seja vem vindo $nome\ndigite");
print("Salario : ");
int salario = int.parse(stdin.readLineSync().toString());  // isto serve para declarar interios sem ter que fazer uma função especifica para conversão
print(salario.runtimeType);
print("Horas trabalhadas");
int horas_trabalhadas = int.parse(stdin.readLineSync().toString());
print("Digite a quantidade de dias trabalhados");
int dias_trabalhando = int.parse(stdin.readLineSync().toString());

var total = calcula_trabalho(salario, horas_trabalhadas, dias_trabalhando);
print("O total foi de $total");


}
 