// ignore_for_file: file_names
// ignore_for_file: file_names

int callback(int valor) {
  print(valor);
  return (valor + 2);
}

Future<void> main() async {
  print("incio");
  final interval = Duration(seconds: 1);
  final stream = Stream<int>.periodic(interval, callback);
  print(stream.runtimeType);
  var parada = stream.take(8).skip(6);
  //await for
  await for (var i in parada) {
    print("");
  }
  print("fim");
}
