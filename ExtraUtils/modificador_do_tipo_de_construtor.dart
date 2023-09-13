class Pessoa {
  final String nome;
  final int idade;

  const Pessoa(this.nome, this.idade);

  Pessoa.alguem()
      : nome = "algo",
        idade = 12;
}

void main() {
  var pessoa = Pessoa("algo", 2);
  // pessoa.nome = "ok";  O mesmo não pode ser alterado por conta dos atributos
  var ok = Pessoa.alguem();
}
