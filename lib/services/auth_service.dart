import 'dart:convert';

import 'package:baronbay_pos/models/user_model.dart';

class AuthService {
  String baseUrl = 'https://baronbay.updateproject.my.id/api/user/';

  Future<UserModel> login ({
    String username,
    String password,
  }) async {
    var url = '$baseUrl/login';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'username': username,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200){
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.tokenLogin = 'Bearer ' + data['token_login'];

      return user;
    } else {
      throw Exception('Gagal login');
    }
  }
}