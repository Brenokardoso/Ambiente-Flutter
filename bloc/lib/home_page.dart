// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers



import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/counter_bloc");
                },
                child: Text("Bloc",
                    style: Theme.of(context).textTheme.headlineMedium),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/cubit_bloc");
                },
                child: Text("cubit",
                    style: Theme.of(context).textTheme.headlineMedium),
              )
            ],
          ),
        ),
      ),
    );
  }
}
