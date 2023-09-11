// ignore_for_file: unused_import, body_might_complete_normally_nullable

import 'dart:io';

class Animal {
  String? fazBarulho() {
    print("Barulho do animal");
  }
}

class Gato extends Animal {
  @override
  String? fazBarulho() {
    print("Miau");
  }
}

void main() {
  var gato = Gato();
  gato.fazBarulho();
}
