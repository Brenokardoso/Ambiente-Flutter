// ignore_for_file: unused_import
import "dart:io";
import "dart:mirrors";

mixin Imprimir {
  impressao() => print("Olá,mundo");
  apresentacao(String nome) => print("Me chamo $nome , prazer a todos");
}

class Pessoa with Imprimir {
  String nome;

  Pessoa(this.nome);
}

// callable
// class CallAble {
//   String nome;

//   CallAble(this.nome);

//   call(String mensagem) {
//     print("Olá $mensagem !");
//   }
// }

void main() {
  var pessoa = Pessoa("Breno");
  pessoa.impressao();
  pessoa.apresentacao(pessoa.nome);

  // CASCADE NOTATION
  pessoa
    ..impressao()
    ..nome = "breno"
    ..apresentacao(pessoa.nome);

  // callable
  // var chamada = CallAble("Lucas");
  // chamada.call(chamada.nome);
}
