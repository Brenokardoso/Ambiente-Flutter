// Crie uma interface `Veiculo` com métodos como `ligar()`, `desligar()`, e `acelerar()`. Implemente essa interface em classes como `Carro`, `Moto` e `Caminhao`.

class Veiculo {
  ligar() => print("O veiculo está ligando");
  desligar() => print("O veiculo está sendo desligado");
  acelerar() => print("O veiculo está acelerando");
}

class Carro extends Veiculo {
  @override
  ligar() => print("O carro está ligando");
  desligar() => print("O carro está sendo desligado");
  acelerar() => print("O carro está acelerando");
}

class Moto extends Veiculo {
  @override
  ligar() => print("A moto está ligando");
  desligar() => print("A moto está sendo desligado");
  acelerar() => print("A moto está acelerando");
}

class Caminhao extends Veiculo {
  @override
  ligar() => print("O caminhao está ligando");
  desligar() => print("O caminhao está sendo desligado");
  acelerar() => print("O caminhao está acelerando");
}

void main() {
  var carro = Carro();
  var moto = Moto();
  var caminhao = Caminhao();

  carro.ligar();
  carro.desligar();
  carro.acelerar();

  moto.ligar();
  moto.desligar();
  moto.acelerar();

  caminhao.ligar();
  caminhao.desligar();
  caminhao.acelerar();
}
