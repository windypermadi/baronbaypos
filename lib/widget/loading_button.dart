import 'package:flutter/material.dart';
import '../settings/theme.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 50,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 70, left: 70, right: 70),
            child: TextButton(
              onPressed: (){}, 
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   SizedBox(
                      width: 32,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation(
                          primaryTextColor,
                        ),
                      ),
                    ),
                  Text(
                    'Loading',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium
                    ),
                  ),
                ],
              )),
          );
  }
}