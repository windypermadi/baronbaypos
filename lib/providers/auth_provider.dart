import 'package:baronbay_pos/models/user_model.dart';
import 'package:baronbay_pos/services/auth_service.dart';
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier{
  late UserModel? _user;

  UserModel get user => _user!;

  set user(UserModel user){
    _user = user;
    notifyListeners();
  }

  Future<bool> login({
    required String username,
    required String password,
  }) async {
    try {
      UserModel user = await AuthService().login(
        username: username,
        password: password,
      );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}