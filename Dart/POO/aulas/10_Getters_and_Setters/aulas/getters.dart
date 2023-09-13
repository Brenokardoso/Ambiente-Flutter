class Pessoa {
  late int _idade;

  int get idade {
    return _idade;
  }

  set idade(int age) {
    if (age > 0) {
      this._idade = age;
    }
  }
}
