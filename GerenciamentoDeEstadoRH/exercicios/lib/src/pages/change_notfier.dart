// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import, unused_field, prefer_final_fields, recursive_getters

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskModel extends ChangeNotifier {
  List<String> _tasks = [];
  List<String> get tasks => _tasks;

  addTask(String task) {
    _tasks.add(task);
    notifyListeners();
  }
}

class TaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tarefas'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Provider.of<TaskModel>(context).tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(Provider.of<TaskModel>(context).tasks[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(labelText: 'Nova Tarefa'),
              onSubmitted: (newTask) {
                Provider.of<TaskModel>(context, listen: false).addTask(newTask);
              },
            ),
          ),
        ],
      ),
    );
  }
}
