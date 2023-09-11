// Crie uma classe `Loja` que mantenha uma lista de produtos.
// Crie classes para diferentes tipos de produtos (por exemplo, `ProdutoEletronico`, `ProdutoAlimenticio`) que herdem de uma classe base `Produto`.
// Use o polimorfismo para calcular o preço total dos produtos na loja.

class Loja {
  List<String> listaDeCompras = [];
  adcionaItem(String item) => listaDeCompras.add(item);

  mostraItens() {
    for (var itens in listaDeCompras) {
      print(itens);
    }
  }
}

class Eletrodomestico extends Loja {
  @override
  adcionaItem(String item) {
    listaDeCompras.add(item);
    print("o item $item foi adcionado");
  }

  mostraItens() {
    for (var itens in listaDeCompras) {
      print(itens);
    }
  }
}

class ProdutoAlimento extends Loja {
  @override
  adcionaItem(String item) {
    listaDeCompras.add(item);
    print("o item $item foi adcionado");
  }

  mostraItens() {
    for (var itens in listaDeCompras) {
      print(itens);
    }
  }
}

void main() {
  var eletro = Eletrodomestico();
  var produto = ProdutoAlimento();

  eletro.adcionaItem("Geladeira");
  eletro.adcionaItem("Fogão");
  eletro.adcionaItem("Televisão");
  eletro.adcionaItem("Computador");
  eletro.adcionaItem("Monitor");

  produto.adcionaItem("Arroz");
  produto.adcionaItem("Feijão");
  produto.adcionaItem("Carne");
  produto.adcionaItem("Macarrão");
  produto.adcionaItem("Abacaxi");

  eletro.mostraItens();
  produto.mostraItens();
}
