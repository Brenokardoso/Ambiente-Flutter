class Pessoa {
  late String? nome;
  late int? idade;

  Pessoa([this.nome, this.idade]);

  String toString() => ("idade : $idade\nnome = $nome\n");
}

void main() {
  var pessoa1 = Pessoa("lucas", 22);
  var pessoa3 = new Pessoa("breno", 21);
  var pessoa2 = Pessoa();
  var pessoa4 = Pessoa("ninja", 44);
  pessoa2
    ..idade = 33
    ..nome = 'Buda';

  print("pessoa1:\n$pessoa1");
  print("pessoa2:\n$pessoa2");
  print("pessoa3:\n$pessoa3");
  print("pessoa4:\n$pessoa4");
}
