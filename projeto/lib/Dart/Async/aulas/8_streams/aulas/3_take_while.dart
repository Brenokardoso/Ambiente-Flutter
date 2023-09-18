// ignore_for_file: file_names
// ignore_for_file: file_names

int callback(int valor) {
  print(valor);
  return (valor + 1) * 2;
}

Future<void> main() async {
  print("incio");
  final interval = Duration(seconds: 1);
  final stream = Stream<int>.periodic(interval, callback);
  var parada = stream.takeWhile((int valor) => valor <= 14);
  //await for
  await for (var i in parada) {
    print("$i");
  }
  print("fim");
}
