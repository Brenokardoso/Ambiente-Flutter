class Pessoa implements Comparable<Pessoa> {
  final String nome;
  final int idade;

  Pessoa(this.nome, this.idade);

  @override
  int compareTo(Pessoa other) {
    var dado = this.idade - other.idade;
    return dado;
  }

}

 void main() {
    var breno = Pessoa("breno", 21);
    var amanda = Pessoa("amanda", 17);

    print(amanda.compareTo(breno));
  }