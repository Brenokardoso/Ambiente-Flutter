import "dart:io";
import "dart:math";


void main(){
var random = Random();
var tentativas = 0;
print("Digite um numero para ser o numero limite para a máquina receber");
var numero_limite = int.parse(stdin.readLineSync().toString());
int numero_aleatorio_maquina = random.nextInt(numero_limite);
print("Digite o numero o qual você acha que foi o que a maquina recebeu");
int numero_aleatorio_humano = int.parse(stdin.readLineSync().toString());

while(true){

  if(numero_aleatorio_maquina == numero_aleatorio_humano){
    print("Parabens você acertou o chute");
    print("O seu numero foi $numero_aleatorio_humano e o numero da maquina era $numero_aleatorio_maquina");
    break;
  }
  else{
    print("Você errou feio amigo,tente novamente");
    numero_aleatorio_humano = int.parse(stdin.readLineSync().toString());
    tentativas++;
  }
}
print("O numero de tentativas foi de $tentativas e o numero da máquia era o $numero_aleatorio_maquina");
}