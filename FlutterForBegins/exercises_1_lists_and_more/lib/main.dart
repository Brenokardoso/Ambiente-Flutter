// ignore_for_file: prefer_const_constructors, avoid_print, avoid_returning_null_for_void, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(
    App(),
  );
}

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/xman": (_) => Xman(),
      },
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("APPBAR"),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: [
            Text(
              "Lista de Filmes:",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(Icons.live_tv_rounded),
              trailing: TextButton(
                child: Container(
                  color: Colors.blueAccent[400],
                  width: 80,
                  height: 40,
                  child: Center(
                    child: Text(
                      "Assistir X-Men",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                onPressed: () => Navigator.of(context).pushNamed("/xman"),
              ),
              title: Text("X-Men"),
              subtitle:
                  Text("Aventura de super-heróis com anti-heróis mutantes"),
            ),
            ListTile(
              leading: Icon(Icons.live_tv_rounded),
              trailing: TextButton(
                child: Container(
                  color: Colors.blueAccent[400],
                  width: 80,
                  height: 40,
                  child: Center(
                    child: Text(
                      "Assistir Blade II",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                onPressed: () => print("Assistindo Blade II"),
              ),
              title: Text("Blade II"),
              subtitle: Text(
                  "Um caçador de vampiros anti-herói enfrenta ameaças sobrenaturais"),
            ),
            ListTile(
              leading: Icon(Icons.live_tv_rounded),
              trailing: TextButton(
                child: Container(
                  color: Colors.blueAccent[400],
                  width: 80,
                  height: 40,
                  child: Center(
                    child: Text(
                      "Assistir Gladiador",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                onPressed: () => print("Assistindo Gladiador"),
              ),
              title: Text("Gladiador"),
              subtitle: Text("Um épico de ação ambientado na Roma Antiga"),
            ),
            ListTile(
              leading: Icon(Icons.live_tv_rounded),
              trailing: TextButton(
                child: Container(
                  color: Colors.blueAccent[400],
                  width: 80,
                  height: 40,
                  child: Center(
                    child: Text(
                      "Assistir Missão: Impossível 2",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                onPressed: () => print("Assistindo Missão: Impossível 2"),
              ),
              title: Text("Missão: Impossível 2"),
              subtitle: Text("Ação espiã com o agente anti-herói Ethan Hunt"),
            ),
            ListTile(
              leading: Icon(Icons.live_tv_rounded),
              trailing: TextButton(
                child: Container(
                  color: Colors.blueAccent[400],
                  width: 80,
                  height: 40,
                  child: Center(
                    child: Text(
                      "Assistir O Patriota",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                onPressed: () => print("Assistindo O Patriota"),
              ),
              title: Text("O Patriota"),
              subtitle: Text(
                  "Aventura de época com um herói relutante durante a Guerra Revolucionária Americana"),
            ),
            // Adicione mais filmes aqui conforme necessário.
          ],
        ),
      ),
    );
  }
}

class Xman extends StatelessWidget {
  const Xman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.yellow[600],
          child: Center(
            child: Text("Wolverine"),
          ),
        ),
      ),
    );
  }
}
