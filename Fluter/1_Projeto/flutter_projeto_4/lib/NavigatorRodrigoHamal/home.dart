// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_projeto_4/NavigatorRodrigoHamal/navega%C3%A7%C3%A3o%20_4.dart';
import 'package:flutter_projeto_4/NavigatorRodrigoHamal/navega%C3%A7%C3%A3o_1.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      drawer: Drawer(
        backgroundColor: Colors.grey[400],
        child: Column(
          children: [
            AppBar(
              title: Text(
                "MyDrawer",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              centerTitle: true,
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "MyAppBar",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue.shade800,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        settings: RouteSettings(name: "Pagina Via Page #1"),
                        builder: (BuildContext semText) => Page1(),
                      ),
                    );
                  },
                  child: Text("Page1 Via Page"),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue.shade800,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Pop Page1"),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue.shade800,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        settings: RouteSettings(name: "Page1 Via Named"),
                        builder: (BuildContext semText) => Page1(),
                      ),
                    );
                  },
                  child: Text("Page1 Via Named"),
                ),
              ),
            ),
          ),
          // Container(
          //   margin: EdgeInsets.all(5),
          //   child: Center(
          //     child: Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.blue.shade800,
          //     ),
          //   ),
          // ),
          // Container(
          //   margin: EdgeInsets.all(5),
          //   child: Center(
          //     child: Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.blue.shade800,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
