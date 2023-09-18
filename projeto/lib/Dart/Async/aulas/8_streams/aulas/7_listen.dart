// ignore_for_file: file_names

int callback(int valor) {
  print("valor = $valor");
  return (valor * 2);
}

Future<void> main() async {
  print("incio");

  final interval = Duration(seconds: 2);
  final stream = Stream<int>.periodic(interval, callback);

  var parada = stream.take(8);

  parada.listen((valor) => print("O valor em lista é de : $valor"));

  print("fim");
}
