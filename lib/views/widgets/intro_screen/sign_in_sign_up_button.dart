// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:flutter/material.dart';

enum ButtonType { signUp, signIn }

class SignInSignUpButton extends StatelessWidget {
  const SignInSignUpButton({
    required this.buttonType,
    super.key,
  });

  final ButtonType buttonType;

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: () {
          switch (buttonType) {
            case ButtonType.signUp:
              /*
                TODO: Implement onPressed
                  for ButtonType.signUp
               */
              break;
            case ButtonType.signIn:
              /*
                TODO: Implement onPressed
                  for ButtonType.signIn
               */
              break;
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
            buttonType == ButtonType.signUp
                ? primaryColor
                : introScreenSignInButtonColor,
          ),
          shape: MaterialStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                smallSpacing + spacing,
              ),
            ),
          ),
          elevation: const MaterialStatePropertyAll<double>(
            smallSpacing - tinySpacing - tinySpacing,
          ),
          padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(
              vertical: spacing,
              horizontal: veryLargeSpacing,
            ),
          ),
        ),
        child: Text(
          buttonType == ButtonType.signUp ? signUpLiteral : signInLiteral,
          style: TextStyle(
            fontSize: spacing - tinySpacing,
            color: buttonType == ButtonType.signUp
                ? introScreenSignUpButtonTextColor
                : introScreenSignInButtonTextColor,
            fontFamily: inter,
            fontWeight: FontWeight.w700,
          ),
        ),
      );
}
