// ignore_for_file: unused_import

import 'dart:io';

void main() {
  var i = 0;
  while (i < 10000) {
    print(i);
    i += 1;
  }

  //Cocando um delay na saída
  Future.delayed(Duration(seconds: 4), () {
    print("time de quatro segundos");
  });
}
