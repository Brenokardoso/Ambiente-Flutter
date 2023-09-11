class Animal {
  void fazBarulho() {
    print("O animal faz seu barulho típico");
  }
}

class Gato extends Animal {
  @override
  void fazBarulho() {
    print("miau");
  }
}

class Cachorro extends Animal {
  @override
  void fazBarulho() {
    print("au au au");
  }
}

main() {
  var gato = Gato();
  var cachorro = Cachorro();
  gato.fazBarulho();
  cachorro.fazBarulho();
}
