import 'package:dart_async/08_repositories/models/user.dart';
import 'package:http/http.dart';

class UserRepository {
  findAllUsers(int id) async {
    var url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/$id';
    var response = await get(Uri.parse(url));
    if (response.statusCode == 200) return User.fromJson(response.body);
  }
}
