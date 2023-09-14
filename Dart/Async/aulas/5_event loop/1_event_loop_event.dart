// ignore_for_file: unused_import

import "dart:async";
import "dart:io";

void main() {
  print("Inicio Main");
  scheduleMicrotask(() => print("Microtask1"));
  print(DateTime.now());
  Future.delayed(Duration(seconds: 2), () {
    print(DateTime.now());
    print("Future delayed1");
  });
  Future(() => print("Future delayed 2"));
  Future(() => print("Future delayed 3"));
  print("Fim Main");
}
