
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intern_trainning/config/app_config.dart';
import 'package:intern_trainning/model/create_user_model.dart';
import 'package:intern_trainning/model/get_user_data.dart';
import 'package:intern_trainning/model/update_user_model.dart';

class ApiService {
  Future<List<User>> fetchUsers() async {

    final url = Uri.parse(
      '${AppConfig.baseUrl}/api/v1/intern/users/',

    );
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body);
      final List<dynamic> data = decoded is List ? decoded : decoded['results'];
    
      return data
       .map((item) => User.fromJson(item ))
      .toList();

      
    } 
    throw Exception('Failed to load users: ${response.statusCode}');


  }
  Future<void> deleteUser(int userID) async {
    final url = Uri.parse(
      '${AppConfig.baseUrl}/api/v1/intern/users/$userID/'
    );
    final response = await http.delete(
        url,
        headers: {
          'Accept': 'application/json',
        }
    );

    if (response.statusCode == 200||
    response.statusCode== 202||
    response.statusCode==204){
      return;
    }
    throw Exception(
      'Failed to delete user: ${response.statusCode}'
      '${response.body}'
    );
  }
  Future<User> createUser (CreateUser user) async {

    final url = Uri.parse(
    '${AppConfig.baseUrl}/api/v1/intern/users/');

    final response = await http.post(
      url, 
      headers: {
        'Content-Type': 'application/json',
        'Accept':'application/json',
      },
      body: jsonEncode (user.toJson()),
      );

      if (response.statusCode == 200 ||
      response.statusCode == 201) {
        return User.fromJson(jsonDecode(response.body));
      }
      throw Exception(
        'fail to create user: ${ response.statusCode} ${response.body}',

    );


  }

Future<void> updateUser({
  required int userId,
  required UpdateUser user,
}) async {
  final url = Uri.parse(
    '${AppConfig.baseUrl}/api/v1/intern/users/$userId/',
  );

  final response = await http.patch(
    url,
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
    body: jsonEncode(user.toJson()),
  );

  if (response.statusCode == 200 ||
      response.statusCode == 202 ||
      response.statusCode == 204) {
    return;
  }

  throw Exception(
    'Failed to update user: '
    '${response.statusCode} ${response.body}',
  );
}




}