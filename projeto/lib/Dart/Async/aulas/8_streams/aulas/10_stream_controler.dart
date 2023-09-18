import 'dart:async';
import 'dart:io';

void main() {
  // Criando um controler:
  var controller =
      StreamController<dynamic>(); // pode usar slug pra definir o tipo

  // para adicionar eventos coloque o metodo para escrever e para add:
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);

  // use o metodo stream para ter acesso aos métodos
  controller.stream.listen((event) {
    print(event);
  });

  controller.close();
}
