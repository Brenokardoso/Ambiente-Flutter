// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NavBar"),
        backgroundColor: const Color.fromARGB(255, 51, 4, 181),
      ),
      body: Center(
        child: Container(
          color: Color.fromRGBO(199, 8, 199, 0.984),
          child: Center(
            child: Container(
                width: 150,
                height: 150,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green[300],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(5, 5)),
                  ],
                ),
                child: Center(
                  child: Text("Demostração de um container"),
                )),
          ),
        ),
      ),
    );
  }
}
