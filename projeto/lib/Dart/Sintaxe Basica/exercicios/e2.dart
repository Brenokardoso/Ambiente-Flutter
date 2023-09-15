/**
 * João Papo-de-Pescador, homem de bem, comprou um microcomputador para controlar o rendimento diário de seu trabalho.
 *  Toda vez que ele traz um peso de peixes maior que o estabelecido pelo regulamento de pesca do estado de São Paulo (50 quilos)
 *  deve pagar uma multa de R$ 4,00 por quilo excedente. João precisa que você faça um programa que leia a variável peso (peso de peixes) 
 * e calcule o excesso.
 *  Gravar na variável excesso a quantidade de quilos além do limite e na variável multa o valor da multa que João deverá pagar.
 *  Imprima os dados do programa com as mensagens adequadas. 
 */

import 'dart:io';


calculo_governo(excesso){
  if(excesso > 0){
  int pagamento_governo = (excesso * 4);  
  return pagamento_governo;  
}
else{
  Null;
}

}

void main(){
  print("Digite o Peso do peixe pego:");
  var peso_peixe_pego = int.parse(stdin.readLineSync().toString());
  var excesso = peso_peixe_pego - 50;
  var total = calculo_governo(excesso);

  print("Um peixe de $peso_peixe_pego kg foi pego em SP ultrapassando o limite em $excesso");
  print("A multa fica um total de $total");

}