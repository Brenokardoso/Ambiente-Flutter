mixin Logger {
  pedeComida() => print("Eu estou com fome");
  pedeComidaEspecifica(String comida_especifica) =>
      print("Eu estou com fome de $comida_especifica");
}

class Pedido with Logger {
  String nome;
  double preco;

  Pedido(this.nome, this.preco);
}

void main() {
  var pedido = Pedido("comida", 2.50);
  pedido.pedeComida();
  pedido.pedeComidaEspecifica("Pizza com bacon extra");
}
