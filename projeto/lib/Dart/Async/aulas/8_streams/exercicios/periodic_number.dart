import 'dart:io';

int contaNumeros(int valor) {
  return valor + 1;
}

Future<void> main() async {
  print("começo");
  var tempo = Duration(seconds: 1);
  final stream = Stream<int>.periodic(tempo, contaNumeros);
  print("fim");
  await for (var i in stream) {
    if (i == 10) {
      print("acabou");
      break;
    } else {
      print(i);
    }
  }
}
