// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_projeto_4/navega%C3%A7%C3%A3o_1.dart';
import 'package:flutter_projeto_4/navega%C3%A7%C3%A3o_2.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400], // BackGround Scaffold
      appBar: AppBar(
        titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 246, 246, 246),
          fontSize: 40,
        ),
        centerTitle: true,
        title: Text(
          "AppBar",
          style: TextStyle(
            fontFamily: 'border',
          ),
        ),
        backgroundColor: Color.fromARGB(255, 14, 90, 203),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 130, 139, 151),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 11, 106, 230),
          title: Text("Drawer"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 40,
              color: Color.fromARGB(255, 14, 95, 203),
              child: Center(
                child: Text(
                  "Botões",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(6),
              width: 100,
              height: 100,
              color: Color.fromARGB(255, 14, 95, 203),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      settings: RouteSettings(name: "Page1"),
                      builder: (BuildContext teste) => Page1(),
                    ),
                  );
                },
                child: Text(
                  "Page1  ",
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(6),
              width: 100,
              height: 100,
              color: Color.fromARGB(255, 14, 95, 203),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext semTexto) => Page2(),
                    ),
                  );
                },
                child: Text(
                  "Page2",
                  style: TextStyle(
                    color: const Color.fromARGB(235, 255, 255, 255),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
