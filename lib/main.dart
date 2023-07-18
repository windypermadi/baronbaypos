import 'package:baronbay_pos/pages/home_page.dart';
import 'package:baronbay_pos/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'pages/signin_page.dart';
import 'pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sign-in': (context) => const SignInPage(),
        '/home': (context) => const MainPage(),
      },
    );
  }
}