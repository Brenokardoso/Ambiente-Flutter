/**
   Faça um Programa que peça a temperatura em graus Fahrenheit, transforme e mostre a temperatura em graus Celsius.
   C = 5 * ((F-32) / 9).  
 **/

// import "dart:ffi";
// import "dart:ffi";
import "dart:io";

void main(){
print("Digite a sua temperatura em Fahrenheit:");
double temperatura_fahrrenheit = double.parse(stdin.readLineSync().toString());
double temperatura_celcius = 5 * ((temperatura_fahrrenheit - 32) / 9);
print("A temperatura  de $temperatura_fahrrenheit F° fica em $temperatura_celcius C°");
}