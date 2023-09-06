import 'dart:io';

// Defina uma classe Produto com atributos nome e preço. Implemente um construtor personalizado que aceita esses dois valores e crie objetos Produto usando-o.
class Produto {
  String? nome;
  double? preco;

  Produto.bombril(String nome, double preco) //construtor personalizado
      : nome = nome,
        preco = preco;

  mostraProdutos() => print("O produto $nome custam exatos : $preco");
}

void main() {
  var bombril = Produto.bombril('assolan', 4.65);
  bombril.mostraProdutos();
  print(bombril.runtimeType);
}
