// ignore_for_file: file_names

int callback(int valor) {
  print("valor = $valor");
  return (valor * 2);
}

Future<void> main() async {
  print("incio");

  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.asBroadcastStream();

  var parada = stream.take(8);

  parada.listen((valor) => print(
      "O valor em lista1 é de : $valor")); //uma stream pode ter apenas um listeres sem o asBroadcastStream

  parada.listen((valor) => print(
      "O valor em lista2 é de : $valor"));

  print("fim");
}
