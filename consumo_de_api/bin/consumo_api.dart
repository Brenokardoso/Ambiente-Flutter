import 'dart:convert';

void main(List<String> args) {
  String cidadeJson = ''' 
  {
    "id" : 1,
    "nome" : "Breno Kardoso"
  }
  ''';

  final cidadeMap = jsonDecode(cidadeJson);
  print(cidadeJson);
  print(cidadeMap);
}
