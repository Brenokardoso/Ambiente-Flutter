// ignore_for_file: file_names

int callback(int valor) {
  print(valor);
  return (valor + 1) * 2;
}

Future<void> main() async {
  print("incio");
  final interval = Duration(seconds: 2);
  final stream = Stream<int>.periodic(interval, callback);
  var parada = stream.take(4); //take == define quanatos evento a strem vai fazer antes de encerrar
  //await for
  await for (var i in parada) {
    print("");
  }
    print("fim");
}
