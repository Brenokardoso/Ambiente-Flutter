import 'dart:io';

class Data {
  int dia;
  int mes;
  int ano;

  Data(this.dia, this.mes, this.ano);

  String toString() => ("Data($dia/$mes/$ano)");
}

main() {
  var data = Data(13, 09, 2023);
  print(data);
}
