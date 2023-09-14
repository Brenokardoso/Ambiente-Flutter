Future<void> main() async {
  List<num> numeros = [];
  numeros = List.generate(10, (i) => i++);

  numeros.forEach((numero) async {
    await Future.delayed(Duration(seconds: 1));
    print(numero);
  });
}
