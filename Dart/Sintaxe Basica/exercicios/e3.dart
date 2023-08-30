import 'dart:io';

void main(){
print("Digite a quantidade de metros que você deseja transformar");
int metros  = int.parse(stdin.readLineSync().toString());
int conversor = metros * 100;
print("$metros metros tem $conversor centimetros");
}