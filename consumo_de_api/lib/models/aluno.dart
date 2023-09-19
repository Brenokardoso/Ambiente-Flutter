import 'package:consumo_de_api/models/cidade.dart';
import 'package:consumo_de_api/models/curso.dart';
import 'package:consumo_de_api/models/enderecos.dart';

class Aluno {
  String id;
  String nome;
  int idade;
  List<String> nomeCursos = [];
  // Map<String, Map<String, dynamic>> enderecos = {}; não fazer assim,usar composição
  Endereco endereco;
  List<Curso> curso = [];

  Aluno(
      {required this.id,
      required this.nome,
      required this.idade,
      required this.nomeCursos,
      required this.endereco,
      required this.curso});
}
