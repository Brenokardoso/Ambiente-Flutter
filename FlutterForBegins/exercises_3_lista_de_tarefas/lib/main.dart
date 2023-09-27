// ignore_for_file: prefer_const_constructors, avoid_print, non_constant_identifier_names, unnecessary_string_interpolations

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: WorkHome(),
    );
  }
}

class WorkHome extends StatelessWidget {
  WorkHome({super.key});

  var lista_de_tarefas = [
    "Comprar leite",
    "Ligar para o cliente",
    "Estudar programação",
    "Fazer exercícios",
    "Ir à academia",
    "Preparar o jantar",
    "Ler um livro",
    "Limpar o quarto",
    "Assistir a um filme",
    "Fazer compras",
    "Enviar e-mails",
    "Resolver problemas de código",
    "Passear com o cachorro",
    "Planejar as férias",
    "Organizar a papelada",
    "Aprender uma nova linguagem de programação",
    "Montar um quebra-cabeça",
    "Escrever um artigo",
    "Visitar um museu",
    "Marcar consulta médica",
  ];

  var subacoes = [
    "Compre um litro de leite fresco na mercearia mais próxima.",
    "Ligue para o cliente para confirmar a reunião agendada. Anote todos os detalhes importantes.",
    "Dedique um tempo para estudar programação, focando em conceitos fundamentais e prática de codificação.",
    "Faça uma sessão de exercícios aeróbicos, como corrida ou pular corda, por pelo menos 30 minutos.",
    "Vá para a academia e siga seu plano de treinamento de musculação. Não se esqueça de aquecer antes.",
    "Prepare o jantar com frango grelhado, legumes e arroz integral para uma refeição saudável.",
    "Leia um capítulo do livro que você está atualmente lendo. Faça anotações se desejar.",
    "Arrume o quarto, dobre as roupas e organize os pertences em seus devidos lugares.",
    "Assista ao filme que você escolheu para hoje à noite. Prepare algumas pipocas para acompanhar.",
    "Faça compras no supermercado para garantir que você tenha todos os ingredientes para o jantar.",
    "Envie e-mails de acompanhamento aos colegas de trabalho sobre os projetos atuais. Certifique-se de incluir atualizações importantes.",
    "Depure e otimize o código-fonte do projeto para melhorar o desempenho e a eficiência.",
    "Leve o cachorro para passear no parque local por pelo menos 30 minutos. Brinque com ele e deixe-o se exercitar.",
    "Pesquise destinos de viagem, avalie os custos e as atrações turísticas para planejar suas próximas férias.",
    "Organize documentos importantes em pastas e arquivadores. Faça uma lista do que você arquivou para facilitar o acesso.",
    "Aprenda os fundamentos de uma nova linguagem de programação assistindo a tutoriais online e praticando pequenos projetos.",
    "Resolva um quebra-cabeça de 1000 peças em sua mesa de trabalho. Reserve um tempo para relaxar enquanto faz isso.",
    "Escreva um artigo curto sobre um tópico de interesse atual. Pesquise e formule suas ideias de forma clara.",
    "Visite o museu de arte moderna da cidade e aprecie as exposições de artistas contemporâneos.",
    "Agende uma consulta médica para um check-up anual para garantir que sua saúde esteja em ordem.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista De Tarefas"),
        backgroundColor: Colors.orangeAccent[700],
      ),
      body: ListView.builder(
        itemCount: lista_de_tarefas.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: ListTile(
              leading: Icon(
                Icons.task_alt,
                color: Color.fromARGB(255, 29, 240, 57),
              ),
              trailing: IconButton(
                onPressed: () =>
                    print("Desculpe amigo eu não programei isso ainda"),
                icon: Icon(
                  Icons.sensor_door,
                  color: Colors.brown[400],
                ),
              ),
              onTap: () {
                print("Desculpe amigo eu não programei isso ainda");
              },
              title: Center(
                child: Text(
                  "Tarefa : ${lista_de_tarefas[index]}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Center(
                child: Text(
                  "${subacoes[index]}\n",
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
