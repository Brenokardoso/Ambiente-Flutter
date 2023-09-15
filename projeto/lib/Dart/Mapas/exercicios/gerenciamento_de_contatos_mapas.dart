import 'dart:io';

// (Difícil) Implemente um sistema de gerenciamento de contatos que permita adicionar, editar, excluir e listar contatos usando um dicionário como estrutura de dados.
adcionarContato(Map<String, Map<dynamic, dynamic>> agendaDeContatos) {
  print("Digite o nome do contato");
  var nome = stdin.readLineSync().toString();
  agendaDeContatos[nome];
  print("Numero:");
  var numero = int.parse(stdin.readLineSync().toString());
  print("email:");
  var email = stdin.readLineSync().toString();
  print("endereço:");
  var endereco = stdin.readLineSync().toString();

  agendaDeContatos[nome] = {
    "numero": numero,
    "email": email,
    "endereço": endereco
  };
  
}

removerContato(Map<String, Map<dynamic, dynamic>> agendaDeContatos) {
  print("Digite o nome do contato que você deseja remover");
  var nome = stdin.readLineSync().toString();
  agendaDeContatos.remove(nome);
  return print("O contato $nome foi removido");
}

editarContato(Map<String, Map<dynamic, dynamic>> agendaDeContatos) {
  print("Digite o nome do contato que você deseja editar");
  var chave = stdin.readLineSync().toString();

  if (agendaDeContatos.containsKey(chave)) {
    print(
        "Digite o tipo de dado que você deseja editar (email, endereco ou numero)");
    var dado = stdin.readLineSync().toString();
    var valor;

    if (dado == 'email' || dado == 'endereco') {
      print("Digite o novo valor:");
      valor = stdin.readLineSync().toString();
    } else if (dado == 'numero') {
      print("Digite o novo número:");
      valor = int.parse(stdin.readLineSync().toString());
    } else {
      print("Tipo de dado inválido.");
      return;
    }

    agendaDeContatos[chave]![dado] = valor;
    print("Contato atualizado com sucesso.");
  } else {
    print("Contato não encontrado.");
  }
}

listarContatos(Map<String, Map<dynamic, dynamic>> agendaDeContatos) {
  for (var chave in agendaDeContatos.keys) {
    print("${chave}:");
    for (var subchave in agendaDeContatos[chave]!.keys) {
      // print("$chave : ${agendaDeContatos[chave]}");
      print("\t$subchave : ${agendaDeContatos[chave]![subchave]}");
    }
    print("\n");
  }
}

void main() {
  Map<String, Map<dynamic, dynamic>> agendaDeContatos = {};

  agendaDeContatos['Breno'] = {
    'numero': 40028922,
    'email': 'brenobdatereno@breno.breno',
    'endereço': 'uma rua qualquer perto de uma estatua'
  };
  agendaDeContatos['Amanda'] = {
    'numero': 987574487,
    'email': 'AmandaAmanda@amanda.amanda',
    'endereço': 'perto decasa'
  };
  int? escolha;
  int sair = 1;
  do {
    print("Escreva qual ação voce deseja tomar");
    print("1 - Adicionar | 2 - Remover | 3 - Editar | 4 - Mostrar");
    escolha = int.tryParse(stdin.readLineSync().toString());
    switch (escolha) {
      case 1:
        adcionarContato(agendaDeContatos);
        break;
      case 2:
        removerContato(agendaDeContatos);
        break;
      case 3:
        editarContato(agendaDeContatos);
        break;
      case 4:
        listarContatos(agendaDeContatos);
        break;
    }
    print("Deseja sair? 0 - SIM | 1 - NÃO");
    sair = int.parse(stdin.readLineSync().toString());
  } while (sair != 0);
}
