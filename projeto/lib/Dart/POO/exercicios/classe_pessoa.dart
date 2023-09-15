// ignore_for_file: unused_import

import 'dart:io';

class Pessoa {
  String nome;
  int idade;

  

  Pessoa(this.nome, this.idade);

  Pessoa.emDobro(String nome, int idade)
      : nome = nome + " Em dobro agora",
        idade = idade * 2;

  void mostraDetalhes() => print(
  """
  nome:$nome 
  idade:$idade
  """
  );
}

void main() {
  var pessoa = Pessoa('Breno', 19);
  pessoa.mostraDetalhes();
  var pessoa2 = Pessoa.emDobro("Lucas", 21);
  pessoa2.mostraDetalhes();
}
