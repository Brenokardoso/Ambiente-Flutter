// ignore_for_file: unused_field

class Produto {
  final int _id;
  final String nome;
  final double _preco;

  // Produto(this.id,this.nome,this.preco)
  Produto({required int id, required this.nome, required double preco})
      : _id = id,
        _preco = preco {
    print("O id $id e o preço do produto $preco");
  }
  factory Produto.fabrica(
     int id,
     String nome,
     double preco,
  ){
    return Produto(id: id, nome: nome, preco: preco);
  }
}
