import 'dart:convert';
import 'package:baronbay_pos/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'https://baronbay.updateproject.my.id/api/user';
  
  get http => null;

  Future<UserModel> login ({
    required String username,
    required String password,
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

    if (response.statusCode == 200){
      var responseData = json.decode(response.body)['data'];
      var dataArray = responseData['data'];

      var userData = dataArray[0];
        UserModel user = UserModel.fromJson(userData);
        // ignore: prefer_interpolation_to_compose_strings
        user.tokenLogin = 'Bearer ' + responseData['token_login'];

        // print(user);

        return user;

      // if (dataArray.isNotEmpty){
        
      // } else {
      //   throw Exception('No user data found');
      // }
    } else {
      throw Exception('Gagal login');
    }
  }
}