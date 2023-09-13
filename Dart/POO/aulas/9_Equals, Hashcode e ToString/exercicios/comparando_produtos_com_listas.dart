import 'dart:io';

class Produto {
  String nome;
  double preco;
  late int codigo;

  List<Produto> lista_de_produtos = [];

  Produto(String name, double price)
      : nome = name,
        preco = price;

  mostraProdutos(List<Produto> lista) {
    for (var produto in lista) {
      print(produto.nome);
      print(produto.preco);
      print(produto.codigo);
    }
  }
}

colocaHash(Produto objeto) {
  objeto.codigo = objeto.nome.hashCode ^ objeto.preco.hashCode;
  return objeto;
}

comparaObjetosDeProdutos(Produto objeto1, Produto objeto2) {
  if (identical(objeto1, objeto1) == true) {
    print("Os produtos são iguais!");
  } else {
    print("Os produtos não são iguais");
  }
}

adcionaProduto(Produto item) {
  item.lista_de_produtos.add(item);
  return item.lista_de_produtos;
}

void main() {
  var produto1 = Produto("Arroz", 15);
  var produto2 = Produto("Carne Contra filé", 40);

  colocaHash(produto1);
  colocaHash(produto2);

  adcionaProduto(produto1);
  adcionaProduto(produto2);
  produto1.mostraProdutos(produto1.lista_de_produtos);
  produto2.mostraProdutos(produto2.lista_de_produtos);
}
