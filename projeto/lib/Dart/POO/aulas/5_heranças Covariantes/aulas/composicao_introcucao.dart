class Motor {
  ligarMotor() => print("O motor está ligado");
}

class Carro {
  final Motor motor;

  Carro() : motor = Motor();

  fazBarulho(){
    motor.ligarMotor();
    print("Vruum");
  }
}

void main() {
  final carro = Carro();
  carro.fazBarulho();
}
