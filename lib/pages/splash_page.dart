import 'dart:async';
import 'package:flutter/material.dart';
import 'package:baronbay_pos/gen/assets.gen.dart';
import '../settings/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {

    //fungsinya mengatur waktu 3 detik untuk ke route halaman sign in

    Timer(const Duration(seconds: 3), () => Navigator.pushNamed(context, '/sign-in'),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          height: 150,
          width: 130,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/image_splash.png'),
            fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}