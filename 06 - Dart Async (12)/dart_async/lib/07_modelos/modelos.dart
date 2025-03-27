import 'package:dart_async/07_modelos/cidade.dart';
import 'package:dart_async/07_modelos/user.dart';
import 'package:http/http.dart';

void main(List<String> args) {
  // buscaCep();
  buscaUser();
}

Future<void> buscaCep() async {
  var url = 'https://viacep.com.br/ws/01001000/json/';
  var response = await get(Uri.parse(url));

  if (response.statusCode == 200) {
    var c1 = Cidade.fromJson(response.body);
    print(c1.toJson());
  }
}

Future<void> buscaUser() async {
  var url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/1';
  var response = await get(Uri.parse(url));
  print(response.body);
  if (response.statusCode == 200) {
    var u1 = User.fromJson(response.body);
    print(u1.toJson());
    // print(u1.userTypes);
  }
}
