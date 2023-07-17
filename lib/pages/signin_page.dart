import 'package:baronbay_pos/settings/theme.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 70
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Login',
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text('Sign In to Continue',
            style: subtitleTextStyle,
            )
          ],
        ),
      );
    }

    Widget emailInput(){
      return Container(
        margin: const EdgeInsets.only(top: 50, left: 70, right: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Username',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                border: Border.all(color: secondaryTextColor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/images/icon_email.png',
                    width: 17,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your Email Address',
                        hintStyle: subtitleTextStyle,
                      ),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget passwordInput(){
      return Container(
        margin: const EdgeInsets.only(top: 20, left: 70, right: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Password',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                border: Border.all(color: secondaryTextColor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/images/icon_password.png',
                    width: 17,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(child: TextFormField(
                      style: primaryTextStyle,
                      obscureText: true,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your Password',
                        hintStyle: subtitleTextStyle,
                      ),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget signInButton(){
          return Container(
            height: 50,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 70, left: 70, right: 70),
            child: TextButton(
              onPressed: (){
                Navigator.pushNamed(context, '/home');
              }, 
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Sign In',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium
                ),
              )),
          );
        }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: LayoutBuilder(builder: (context, constraints) {
              return Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                color: primaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Image.asset('assets/images/image_splash.png',
                      width: 80,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Center(
                      child: Text(
                          'BARON BAY POS',
                          style: TextStyle(
                              fontSize: 24, color: Colors.white)),
                    ),
                  ],
                ),
              );
            }),
          ),
          Expanded(
            flex: 4,
            child: LayoutBuilder(builder: (context, constraints) {
              return Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                color: whiteColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        emailInput(),
                        passwordInput(),
                        signInButton(),
                      ],
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}