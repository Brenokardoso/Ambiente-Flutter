import 'dart:io';

void main() {
  print("começo");
  var stream = Stream<dynamic>.periodic(Duration(seconds: 2), (int numero) {
    print(numero);
    numero++;
  });
  print(stream.listen((data) {}));
  print("fim");
}
