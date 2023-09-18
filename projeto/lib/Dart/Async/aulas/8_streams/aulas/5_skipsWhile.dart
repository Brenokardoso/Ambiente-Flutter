// ignore_for_file: file_names

int callback(int valor) {
  print("valor = $valor");
  return (valor * 2);
}

Future<void> main() async {
  print("incio");
  final interval = Duration(seconds: 2);
  final stream = Stream<int>.periodic(interval, callback);
  var parada = stream.take(5).skipWhile((element) => element < 2);
  //await for
  await for (var i in parada) {
    print("return == $i");
  }
  print("fim");
}
