import "dart:io";


verifica_numero_primo(numero){
  var flag = 0;
  if(numero > 0){
    for(var i = 1;i != numero ; i++){

      if((numero % i) == 0){
        var verifica_conta = (numero % i);
        print("$numero % $i == $verifica_conta");
        flag = flag + 1;
      }
      else{
        continue;
      }
    }
    if(flag <= 2){
      return true;
    }
    else{
      return false;
    }
  }
  else{
    print("Numero invalido,tente outro");
    var number = int.parse(stdin.readLineSync().toString());
    verifica_numero_primo(number);
  } 
}

void main(){
  print("Digite o numero que voce deseja descobrir se é primo");
  var numero = int.parse(stdin.readLineSync().toString());
  verifica_numero_primo(numero) ? print("O numero $numero é primo") : print("O numero $numero não é primo");

}