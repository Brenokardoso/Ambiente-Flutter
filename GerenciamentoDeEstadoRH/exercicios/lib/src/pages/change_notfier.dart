// ignore_for_file: non_constant_identifier_names, prefer_final_fields, unused_field, unnecessary_this, list_remove_unrelated_type, prefer_const_constructors, unnecessary_string_interpolations

import 'package:exercicios/src/pages/set_state.dart';
import 'package:flutter/material.dart';

class TarefaProvider extends ChangeNotifier {
  List<String> _lista_de_tarefas = [
    "Arrumar a casa",
    "Lavar a louça",
    "Caminhar por 30 minutos",
    "Fazer compras no supermercado",
    "Ler um capítulo de um livro",
    "Assistir a um episódio da sua série favorita",
    "Preparar o almoço",
    "Fazer exercícios",
    "Ligar para um amigo ou parente",
    "Organizar a papelada",
    "Estudar por 1 hora",
    "Fazer uma pausa para meditar",
    "Pintar um quadro ou fazer arte",
    "Limpar a geladeira",
    "Assistir a um tutorial de programação",
    "Regar as plantas",
    "Aprender uma nova receita",
    "Escrever em um diário por 20 minutos",
    "Montar um quebra-cabeça",
    "Assistir a um documentário interessante"
  ];
  List<bool> _tarefas_concluidas = [];
  int _inidiceSelecionado = -1;

  TarefaProvider() {
    _tarefas_concluidas = List.filled(_lista_de_tarefas.length, false);
  }

  addTask(String tarefa) {
    _lista_de_tarefas.add(tarefa);
    _tarefas_concluidas.add(false);
    notifyListeners();
  }

  removeTask(String tarefa) {
    _lista_de_tarefas.remove(tarefa);
    _tarefas_concluidas.remove(tarefa);
    notifyListeners();
  }

  taskIsFinished(int index) {
    _inidiceSelecionado = index;
    _tarefas_concluidas[index];
    notifyListeners();
  }

  List<String> get pegaListaDeTarefas => _lista_de_tarefas;

  List<bool> get pegaListaConcluidas => _tarefas_concluidas;
}

class Tarefa extends StatefulWidget {
  const Tarefa({super.key});

  @override
  State<Tarefa> createState() => _TarefaState();
}

class _TarefaState extends State<Tarefa> {
  final TarefaProvider tarefa_provider = TarefaProvider();
  Color cor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Change Notifier")),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${tarefa_provider._lista_de_tarefas[index]}"),
              leading: Icon(
                Icons.date_range_outlined,
                color: Colors.black,
              ),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    cor = Colors.green;
                  });
                },
                icon: Icon(
                  Icons.task_outlined,
                  color: cor,
                ),
              ),
            );
          },
          itemCount: tarefa_provider._lista_de_tarefas.length,
        ),
      ),
    );
  }
}
