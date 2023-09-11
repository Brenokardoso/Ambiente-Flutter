// ignore_for_file: unused_import

import 'dart:io';

// Associação Simples: Crie duas classes, Pessoa e Endereco, onde Pessoa possui um atributo endereco que é uma instância de Endereco.
// Demonstre como você pode associar essas duas classes.

class Endereco {
  String rua;
  String bairro;
  int numero;

  Endereco(String street, String bairro, int number)
      : rua = street,
        bairro = bairro,
        numero = number;
}

class Pessoa {
  String nome;
  Endereco endereco;

  Pessoa(String name, Endereco address)
      : nome = name,
        endereco = address;
}

main() {
  var pessoa =
      Pessoa("breno", Endereco('enesto barros', 'novo horiznte', 1014));
  print(pessoa.endereco.bairro);
}
