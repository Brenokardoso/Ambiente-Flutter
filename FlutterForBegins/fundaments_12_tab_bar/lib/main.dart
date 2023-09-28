// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Center(
            child: Text("To Do List"),
          ),
          backgroundColor: Colors.blueAccent[600],
          bottom: TabBar(
            tabs: [
              Icon(
                Icons.pending_actions,
                color: Colors.black,
              ), // Tarefas Pendentes
              Icon(
                Icons.work_history,
                color: Colors.black,
              ), // Tarefas Em Andamento
              Icon(
                Icons.done_all,
                color: Colors.black,
              ), // Tarefas Concluídas
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PendingTasks(),
            TasksInProgress(),
            CompletedTasks(),
          ],
        ),
      ),
    );
  }
}

// diff/tarefa/inciar
class PendingTasks extends StatelessWidget {
  const PendingTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          ListTile(
            leading: Text(
              "Nível de Dificuldade",
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontFamily: 'arial'),
            ),
            title: Center(
              child: Text(
                "Tarefas Pendentes",
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontFamily: 'arial'),
              ),
            ),
            trailing: Text(
              "Inicar Tarefa",
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontFamily: 'arial'),
            ),
          ),
          ListTile(
            leading: SizedBox(
              width: 120,
              child: Row(
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                ],
              ),
            ),
            title: Text("Lavar o banheiro"),
            trailing: TextButton(
              child: Text("Iniciar"),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Tarefa Inicada"),
                    duration: Duration(seconds: 2),
                    action: SnackBarAction(
                      label: "Desfazer",
                      onPressed: () {},
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class TasksInProgress extends StatelessWidget {
  TasksInProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          ListTile(
            leading: Text(
              "Tempo de Task",
              style:
                  TextStyle(fontWeight: FontWeight.bold, fontFamily: 'arial'),
            ),
            title: Center(
              child: Text(
                "Progressos e Anotações",
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontFamily: 'arial'),
              ),
            ),
            trailing: TextButton(
              child: Text(
                "Finalizar",
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontFamily: 'arial'),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class CompletedTasks extends StatelessWidget {
  const CompletedTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          ListTile(
            leading: null,
            title: null,
            trailing: null,
          )
        ],
      ),
    );
  }
}
