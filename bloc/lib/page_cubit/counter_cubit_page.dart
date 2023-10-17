// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables



import 'package:flutter/material.dart';

class CubitBloc extends StatelessWidget {
  const CubitBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cubit"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter cubit",
              // style: TextStyle(fontSize: 35),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                    onPressed: () {}, icon: Icon(Icons.add), label: Text("")),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.remove),
                    label: Text("")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
