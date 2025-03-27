// REST OU RESTFULL é um conceito/padrão de troca de informações entre sistemas utilizando protocolo HTTP
// Segue o conceito Cliente (front-end) - Servidor (back-end)
// O Client pode fazer uma requisição tipo GET, POST, PUT e DELETE
// O Servidor retorna um status (ex: ^400 = error, ^200 = success)
//
// Mas, apesar disso, nem sempre uma comunicação que utiliza o http e segue o padrão client / servidor é um REST

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main(List<String> args) async {
  // await buscaCep();
  // await buscaLista();
  // await buscaError();
  await salvaPost();
  // await atualizaPut();
}

Future<void> atualizaPut() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/1';

  var json = {
    "userId": 1,
    "id": 101,
    "title": "The Tester",
    "body": "Um novo archétipo sobre a vida de um tester 2"
  };

  var response = await http.put(
    Uri.parse(url),
    body: convert.jsonEncode(json),
    headers: {"content-type": "application/json; charset=utf-8"}
  );

  print(response.body);
  print(response.statusCode);
  print(response.reasonPhrase);
}

Future<void> salvaPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts';

  var json = {
    "userId": 1,
    "id": 101,
    "title": "The Tester",
    "body": "Um novo archétipo sobre a vida de um tester"
  };

  var response =
      await http.post(Uri.parse(url), body: convert.jsonEncode(json),
    headers: {"content-type": "application/json; charset=utf-8"});

  print(response.body);
  print(response.statusCode);
  print(response.reasonPhrase);
}

Future<void> buscaError() async {
  var url = 'https://viacep.com.br/thabtaevtagervagevae/01001000/json/';
  var response = await http.get(Uri.parse(url));

  print(response.body);
  print(response.statusCode);
  print(response.reasonPhrase);
  // var data = convert.JsonDecoder().convert(response.body);
}

Future<void> buscaLista() async {
  var url = 'https://jsonplaceholder.typicode.com/posts';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode >= 200 && response.statusCode < 300) {
    print(response.reasonPhrase);
    var data = convert.JsonDecoder().convert(response.body);
    // print(response.body);
    if (data is List) for (var d in data) if (d is Map) print(d['id']);
  }
}

Future<void> buscaCep() async {
  var url = 'https://viacep.com.br/ws/01001000/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var data = convert.JsonDecoder().convert(response.body);
    print(response.body);
    if (data is Map) {
      print(data['cep']);
      print(data['logradouro']);
      print(data['complemento']);
      print(data['bairro']);
      print(data['localidade']);
      print(data['uf']);
    }
  }
}
