// Caracteristicas
// Comportamentos

class Camisa {
  String? tamanho;
  String? cor;
  String? marca;
  int? preco;

  verifica_marca(marca_da_camisa) {
    if (marca_da_camisa == "Nike") {
      print("Essa marca é boa,lave à seco");
    } else {
      print("Desconheço esta marca");
    }
  }
}
