class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Pessoa && nome == other.nome && idade == other.idade;

  int get hashCode => nome.hashCode ^ idade.hashCode;
}

teste(Pessoa pessoa1, Pessoa pessoa2) {
  if (identical(pessoa1, pessoa1) == true) {
    print(identical(pessoa1, pessoa1));
    print("A ${pessoa1.nome} e a ${pessoa2.nome} tem ${pessoa1.idade} anos");
  } else {
    print("Não sao iguais");
  }
}

void main() {
  var pessoa1 = Pessoa('Alice', 30);
  var pessoa2 = Pessoa('Alice', 30);
  teste(pessoa1, pessoa2);
  print(identical(pessoa1, pessoa1));
}
