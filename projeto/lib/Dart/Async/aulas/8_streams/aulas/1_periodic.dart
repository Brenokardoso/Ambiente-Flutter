// ignore_for_file: file_names

int callback(int valor) {
  print(valor);
  return (valor + 1) * 2;
}

int teste() {
  var valor = 1;
  return (valor + 1);
}

Future<void> main() async {
  print("incio");
  final interval = Duration(seconds: 3);
  final stream = Stream<int>.periodic(interval, callback);
  print("fim");
  //await for
  await for (var i in stream) {
    print("");
  }
}
