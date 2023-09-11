// ignore_for_file: unused_import

import 'dart:io';

// Associação Unidirecional: Crie duas classes, Curso e Aluno, onde um curso pode ter vários alunos.
// Implemente essa associação de forma unidirecional, onde um curso conhece seus alunos,
// mas um aluno não conhece todos os cursos em que está matriculado.

class Aluno {
  String nome;
  int idade;
  String matricula;

  Aluno(this.nome, this.idade, this.matricula);
}

class Curso {
  String nome;
  int codigo_do_curso;
  List<Aluno> alunos_matriculados = [];

  Curso(String name, int code)
      : nome = name,
        codigo_do_curso = code;

  adicionaAluno(String name, int age, String matricula) {
    alunos_matriculados.add(Aluno(name, age, matricula));
  }

  mostraAlunos() {
    for (var aluno in alunos_matriculados) {
      print("""
          aluno : ${aluno.nome}
          idade : ${aluno.idade}
          matricula : ${aluno.matricula}
      """);
    }
  }
}

void main() {
  var curso = Curso("Ciências da Computação", 123); // Crie um curso
  curso.adicionaAluno("Breno", 21, "computacao"); // Adicione um aluno ao curso
  curso.mostraAlunos();
  print(curso.alunos_matriculados.runtimeType);
}
