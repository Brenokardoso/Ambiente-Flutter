// ignore_for_file: unused_local_variable

import 'dart:io';

Future<int> somaNumero(int a, int b) {
  var numero1 = Future(() => a);
  var numero2 = Future(() => b);
  var total = Future(() => a + b);
  return Future.delayed(Duration(seconds: 3), () {
    return total;
  });
}

void main() {
  print("begin");
  print("Digite seu numero");
  var numero1 = int.parse(stdin.readLineSync().toString());
  print("Digite seu outro numero");
  var numero2 = int.parse(stdin.readLineSync().toString());
  var total = somaNumero(numero1, numero2);
  total.then((value) => print("A soma total foi de : $value"));

  print("end");
}
