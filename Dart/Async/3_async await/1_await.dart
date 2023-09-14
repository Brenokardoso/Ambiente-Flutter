import "dart:io";

Future<String> retornaString1() async {
  print("Inicio de P2");
  var i = 0;
  while (i < 5) {
    print(i);
    i++;
  }
  return Future.delayed(Duration(seconds: 3), () => "Fim de P2");
}

Future<String> retornaString2() async {
  print("Incio de P3");
  return Future.delayed(
      Duration(seconds: 3), () => throw Exception("Fim de p3"));
}

Future<String> retornaString3() async {
  print("Inicio de P4");
  var i = 5;
  while (i >= 0) {
    print(i);
    i--;
  }
  return Future.delayed(Duration(seconds: 3), () => "Fim de P4");
}

Future<void> main() async {
  try {
    await retornaString1().then((value) => print(value));
    await retornaString3().then((value) => print(value));
    print("Incio de P1");
    await retornaString2().catchError((value) => print(value));
    print("Fim de P1");
  } on Exception catch (error) {
    print("Não foi possível realizar esta ação por $error");
  }
}
