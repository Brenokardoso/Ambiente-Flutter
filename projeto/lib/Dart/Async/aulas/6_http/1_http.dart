// ignore_for_file: file_names, unused_local_variable
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

// Recebendo uma requisição no estilo http
Future<void> main() async {
  await buscaCep();
  await buscarPosts();
  await naoBuscacep();
  await salvaPost();
  await atualizaPost();
}

Future<void> buscaCep() async {
  // receba sua requisição Http
  var uri = "https://viacep.com.br/ws/01001000/json/";

  // Transforme o link da sua requisção em URI(URL + URN)
  // o mesmo vira uma HttpClienteResponse
  // ela tem os métodos de StatusCode,Body e Headers
  var response = await http.get(Uri.parse(uri));
  var status = response.statusCode;
  var body = response.body;

  // Trabalhe com a sua requição e o tipo de retorno desejado
  if (response.statusCode == 200) {
    print("Requisção concluída\n");
    // convertendo o retorno para Json
    var responseJson = convert.jsonDecode(body);
    for (var chave in responseJson.keys) {
      print("$chave : ${responseJson[chave]}");
    }
  }
}

Future<void> buscarPosts() async {
  // HttpClienteResponse
  var uri = ("https://jsonplaceholder.typicode.com/posts/");

  // Converte a String em uri
  var response = await http.get(Uri.parse(uri));
  var body = response.body;

  // Converta no tipo de arquivo desejado

  var responseJson = convert.jsonDecode(body);

  if (response.statusCode == 200) {
    print(responseJson.runtimeType);
    for (var mapa in responseJson) {
      for (var chave in mapa.keys) {
        print("[$chave] : ${mapa[chave]}");
      }
      print("\n");
    }
  }
}

Future<void> naoBuscacep() async {
  var uri = "https://viacep.com.br/ws/797417452/json/";

  var clienteServidor = await http.get(Uri.parse(uri));

  if (clienteServidor.statusCode >= 299) {
    print("Sua requisição falhou,verifique a sua url");
    print(clienteServidor.statusCode);
    print(clienteServidor.body);
    print(clienteServidor.request);
    print(clienteServidor.reasonPhrase);
  } else {
    print("Bota algo ai na tela ");
  }
}

Future<void> salvaPost() async {
  var uri = "https://jsonplaceholder.typicode.com/posts/";

  var mapa = {
    "title": "Post novo",
    "body": "Descrição do novo post",
    "userId": "871"
  };

  var request = await http.post(Uri.parse(uri), body: convert.jsonEncode(mapa));
  print(request.statusCode);

  // O StatusCode(201) é um post retornado com sucesso
  if (request.statusCode == 201) {
    print("Retornado com sucesso");
    print(request.body);
  } 
  else {
    print("Retornado sem sucesso");
  }
}

Future<void> atualizaPost() async {
  var uri = "https://jsonplaceholder.typicode.com/posts/1";

  var mapa = {
    "title": "Post novo",
    "body": "Descrição de mais um post",
    "userId": "1"
  };

  var request = await http.put(Uri.parse(uri), body: convert.jsonEncode(mapa));

  // O StatusCode(201) é um post retornado com sucesso
  if (request.statusCode == 200 || request.statusCode == 201) {
    print("Atualizado com sucesso");
    print(request.body);
  } else {
    print("Status Error : ${request.statusCode}");
    print("Retornado sem sucesso");
  }
}
