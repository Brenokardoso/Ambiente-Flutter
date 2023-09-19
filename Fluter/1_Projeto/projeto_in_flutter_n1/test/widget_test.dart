// Importa o pacote Flutter, que fornece os recursos para criar o aplicativo



// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// Função principal que inicia o aplicativo Flutter
void main() {
  // runApp é uma função que inicia o aplicativo com o widget fornecido
  runApp(MeuApp());
}

// Classe principal do aplicativo
class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp é um widget que configura a estrutura básica do aplicativo
    return MaterialApp(
      // home é onde definimos a tela inicial do aplicativo
      home: Scaffold(
        // AppBar é um widget que cria a barra superior do aplicativo
        appBar: AppBar(
          // Título exibido na barra superior
          title: Text('Meu Primeiro App Flutter'),
        ),
        // body é onde definimos o conteúdo principal do aplicativo
        body: MeuWidget(), // Corpo do aplicativo é o widget personalizado MeuWidget
      ),
    );
  }
}

// Widget personalizado que exibe um texto
class MeuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Center é um widget que centraliza seu filho na tela
    return Center(
      // Text é um widget que exibe texto na tela
      child: Text(
        'Olá, Flutter!', // O texto a ser exibido
        // TextStyle é usado para definir o estilo do texto, incluindo o tamanho da fonte
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
