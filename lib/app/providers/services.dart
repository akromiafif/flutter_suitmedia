import 'package:http/http.dart' as http;
import 'package:suitmedia_fe/app/data/user.dart';

class ServiceProvider {
  static var client = http.Client();

  Future<User> getUsers() async {
    final response =
        await client.get(Uri.parse('https://reqres.in/api/users?page=1'));

    return userFromJson(response.body);
  }
}
