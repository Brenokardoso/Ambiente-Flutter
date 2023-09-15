import 'dart:async';
import 'dart:math';

Future<num> retornaNumeroQuandoAcaba() {
  return Future.delayed(Duration(seconds: 2), () {
    int numeroAleatorio = Random().nextInt(10);
    return numeroAleatorio;
  });
}

void main() {
  print("Começa");
  retornaNumeroQuandoAcaba().then((value) => print(value));
  print("Termina");
}
