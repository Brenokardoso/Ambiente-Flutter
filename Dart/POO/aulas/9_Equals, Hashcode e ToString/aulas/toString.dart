class Carro {
  String marca;
  String modelo;

  Carro(this.marca, this.modelo);

 
  String toString() => 'Carro: $marca $modelo';
}

void main() {
  final meuCarro = Carro('Toyota', 'Camry');

  print(meuCarro); // Deve imprimir "Carro: Toyota Camry"
}
