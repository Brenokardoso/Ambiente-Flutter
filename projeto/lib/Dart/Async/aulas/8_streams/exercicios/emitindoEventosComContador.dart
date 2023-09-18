import 'dart:async';
import 'dart:io';

void main() {
  var stream = Stream<dynamic>.periodic(
      Duration(seconds: 3), (int contador) => contador++);
  var subscription =
      stream.take(5).where((event) => event != 0).listen((contador) {
    print(contador);
    contador++;
  });
  subscription.onDone(() {
    print("Stream Finalizada");
  });
}
