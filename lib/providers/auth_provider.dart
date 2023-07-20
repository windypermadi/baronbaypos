import 'package:baronbay_pos/models/auth_model.dart';
import 'package:baronbay_pos/services/auth_service.dart';
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  AuthService authService = AuthService();

  late AuthModel _auth;

  AuthModel get auth => _auth;

  set user(AuthModel auth) {
    _auth = auth;
    notifyListeners();
  }

  Future<bool> login({
    required BuildContext context,
    required String username,
    required String password,
  }) async {
    try {
      AuthModel auth = await authService.login(
        context: context,
        username: username,
        password: password,
      );

      _auth = auth;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
