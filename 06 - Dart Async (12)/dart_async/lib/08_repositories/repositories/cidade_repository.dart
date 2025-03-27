import 'package:dart_async/08_repositories/models/cidade.dart';
import 'package:http/http.dart';

class CidadeRepository{
  Future<Cidade> buscarCidade() async {
    var url = 'https://viacep.com.br/ws/01001000/json/';
    var response = await get(Uri.parse(url));

    return (response.statusCode == 200) ? Cidade.fromJson(response.body) : throw Exception();
  }
}