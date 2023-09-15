import 'dart:async';
import 'dart:io';

Future<void> main() async {
  print("Inicio main");
  scheduleMicrotask(() => print("MicroTask #1"));
  await Future(() => print("Evento #1"));
  await Future(() {
    // print(DateTime.now());
    print("Evento #2");
  });

  Future.delayed(Duration(seconds: 2), () {
    var i = 0;
    while (i < 1000) {
      i++;
    }
  });
  await Future.delayed(Duration(seconds: 2), () {
    // print(DateTime.now());
    print("Evento #3");
  });
  scheduleMicrotask(() => print("MicroTask #2"));
  print("Fim main");
}
