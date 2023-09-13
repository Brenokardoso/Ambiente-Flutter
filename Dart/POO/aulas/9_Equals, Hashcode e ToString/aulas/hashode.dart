// ignore_for_file: unused_import

import 'dart:io';

class Produto {
  String nome;
  double preco;
  int dias_validade;

  Produto(this.nome, this.preco, this.dias_validade);

  int get hashCode => (nome.hashCode ^ preco.hashCode ^ dias_validade.hashCode);

  String toString() =>
      "O Produto $nome por $preco reais e dura $dias_validade dias ";
}

void main() {
  var produto1 = Produto("assolan", 12, 2);
  var produto2 = Produto("detergente", 13, 3);
  var produto3 = Produto("pegargente", 12, 1);
  Set<Produto> produtos = {};
  produtos.add(produto1);
  produtos.add(produto2);
  produtos.add(produto3);

  print(produto1.hashCode);
  print(produto2);
  print(produto3);
}
