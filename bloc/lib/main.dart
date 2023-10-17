// ignore_for_file: prefer_const_constructors

import 'package:bloc/home_page.dart';
import 'package:bloc/page_bloc/counter_block_page.dart';
import 'package:bloc/page_cubit/counter_cubit_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        "/": (_) => HomePage(),
        "/counter_bloc": (_) => BlocProvider(create: (_) => CounterBloc),
        "/cubit_bloc": (_) {
          return CubitBloc();
        }
      },
      initialRoute: "/",
    );
  }
}
