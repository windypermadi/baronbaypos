// Overview
// The AuthService class is responsible for handling user authentication and login functionality
// in the BaronBay POS (Point of Sale) application. It provides a method login that allows users
// to log in by sending their credentials (username and password) to the server and receiving an AuthModel object
// containing user information and access tokens upon successful login.

// Usage
// To use the AuthService for user login, follow the steps below:

// Import the required dependencies:
import 'package:baronbay_pos/models/auth_model.dart';
import 'package:baronbay_pos/services/main_service.dart';
import 'package:flutter/material.dart';

/// Instantiate the AuthService:
/// ```dart
/// AuthService authService = AuthService();
/// ```
class AuthService {
// Methods
// Future<AuthModel> login({required BuildContext context, required String username, required String password})
// This method is used for user login. It takes three required parameters:

// context: The build context of the current widget. It is required to show any relevant dialogs or error messages related to login.
// username: The username provided by the user for login.
// password: The password provided by the user for login.
// The method sends the user's credentials to the server using the MainService().postAPI() method, which is part of the MainService class.
// The postAPI() method is responsible for making API requests.

// If the login is successful and the server responds with user data, the method will return an AuthModel object containing user information.
// If the login fails or there is an error in the API response, the method will throw an exception, which can be caught and handled in the UI layer.

  /// Call the login method with the user's credentials:
  /// ```dart
  /// AuthModel auth = await authService.login(
  ///   context: context,
  ///   username: 'john_doe',
  ///   password: 'password123',
  /// );
  /// ```

  Future<AuthModel> login({
    required BuildContext context,
    required String username,
    required String password,
  }) async {
    Map body = {
      'username': username,
      'password': password,
    };

    final result = await MainService().postAPI(
      context: context,
      url: 'user/login',
      body: body,
      activetLoading: false,
    );

    // Cek apakah result['data'] berbentuk array
    if (result['data'] is List) {
      // Jika berbentuk array, ambil data dari indeks 0
      return AuthModel.fromJson(result['data'][0]);
    } else {
      // Jika bukan array, langsung parsing data menjadi AuthModel
      return AuthModel.fromJson(result['data']);
    }
  }
}
