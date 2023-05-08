// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:flutter/material.dart';

enum ButtonType {
  signUp,
  signIn,
  submit,
}

enum From {
  introScreen,
  signUpScreen,
  signInScreen,
  bioDataScreen,
}

class SignInSignUpSubmitButton extends StatelessWidget {
  const SignInSignUpSubmitButton({
    required this.buttonType,
    required this.from,
    this.formKey,
    super.key,
  });

  final ButtonType buttonType;
  final From from;
  final GlobalKey<FormState>? formKey;

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: _onPressed,
        style: ButtonStyle(
          backgroundColor: _buttonBackgroundColor,
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
          padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(
              vertical: spacing,
              horizontal: formKey != null ? nilSpacing : veryLargeSpacing,
            ),
          ),
        ),
        child: formKey != null
            ? Center(
                child: _child,
              )
            : _child,
      );

  Text get _child => Text(
        _literal,
        style: TextStyle(
          fontSize: spacing - tinySpacing,
          color: _buttonTextColor,
          fontFamily: inter,
          fontWeight: FontWeight.w700,
        ),
      );

  void _onPressed() {
    switch (from) {
      case From.introScreen:
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
          case ButtonType.submit:
            throw ArgumentError(
              'Bad Argument! Intro screen has no submit button',
            );
        }
        break;
      case From.signUpScreen:
        switch (buttonType) {
          case ButtonType.signUp:
            /*
                TODO: Implement onPressed
                  for ButtonType.signUp
               */
            break;
          case ButtonType.signIn:
            throw ArgumentError(
              'Bad Argument! Sign up screen has no sign in button',
            );
          case ButtonType.submit:
            throw ArgumentError(
              'Bad Argument! Sign up screen has no sign in button',
            );
        }
        break;
      case From.signInScreen:
        switch (buttonType) {
          case ButtonType.signUp:
            throw ArgumentError(
              'Bad Argument! Sign in screen has no sign up button',
            );
          case ButtonType.signIn:
            /*
                TODO: Implement onPressed
                  for ButtonType.signUp
               */
            break;
          case ButtonType.submit:
            throw ArgumentError(
              'Bad Argument! Sign in screen has no submit button',
            );
        }
        break;
      case From.bioDataScreen:
        switch (buttonType) {
          case ButtonType.signUp:
            throw ArgumentError(
              'Bad Argument! Biodata screen has no sign up button',
            );
          case ButtonType.signIn:
            throw ArgumentError(
              'Bad Argument! Biodata screen has no sign in button',
            );
          case ButtonType.submit:
            /*
                TODO: Implement onPressed
                  for ButtonType.submit
               */
            break;
        }
        break;
    }
  }

  MaterialStatePropertyAll<Color> get _buttonBackgroundColor {
    late Color color;

    switch (from) {
      case From.introScreen:
        switch (buttonType) {
          case ButtonType.signUp:
            color = primaryColor;
            break;
          case ButtonType.signIn:
            color = introScreenSignInButtonColor;
            break;
          case ButtonType.submit:
            throw ArgumentError(
              'Bad Argument! Intro screen has no submit button',
            );
        }
        break;
      case From.signUpScreen:
        switch (buttonType) {
          case ButtonType.signUp:
            color = primaryColor;
            break;
          case ButtonType.signIn:
            throw ArgumentError(
              'Bad Argument! Sign up screen has no sign in button',
            );
          case ButtonType.submit:
            throw ArgumentError(
              'Bad Argument! Sign up screen has no submit button',
            );
        }
        break;
      case From.signInScreen:
        switch (buttonType) {
          case ButtonType.signUp:
            throw ArgumentError(
              'Bad Argument! Sign in screen has no sign up button',
            );
          case ButtonType.signIn:
            color = primaryColor;
            break;
          case ButtonType.submit:
            throw ArgumentError(
              'Bad Argument! Sign in screen has no submit button',
            );
        }
        break;
      case From.bioDataScreen:
        switch (buttonType) {
          case ButtonType.signUp:
            throw ArgumentError(
              'Bad Argument! Biodata screen has no sign up button',
            );
          case ButtonType.signIn:
            throw ArgumentError(
              'Bad Argument! Biodata screen has no sign in button',
            );
          case ButtonType.submit:
            color = primaryColor;
            break;
        }
        break;
    }

    return MaterialStatePropertyAll<Color>(
      color,
    );
  }

  String get _literal {
    late String text;

    switch (from) {
      case From.introScreen:
        switch (buttonType) {
          case ButtonType.signUp:
            text = signUpLiteral;
            break;
          case ButtonType.signIn:
            text = signInLiteral;
            break;
          case ButtonType.submit:
            throw ArgumentError(
              'Bad Argument! Intro screen has no submit button',
            );
        }
        break;
      case From.signUpScreen:
        switch (buttonType) {
          case ButtonType.signUp:
            text = signUpLiteral;
            break;
          case ButtonType.signIn:
            throw ArgumentError(
              'Bad Argument! Sign up screen has no sign in button',
            );
          case ButtonType.submit:
            throw ArgumentError(
              'Bad Argument! Sign up screen has no submit button',
            );
        }
        break;
      case From.signInScreen:
        switch (buttonType) {
          case ButtonType.signUp:
            throw ArgumentError(
              'Bad Argument! Sign in screen has no sign up button',
            );
          case ButtonType.signIn:
            text = logInLiteral;
            break;
          case ButtonType.submit:
            throw ArgumentError(
              'Bad Argument! Sign in screen has no submit button',
            );
        }
        break;
      case From.bioDataScreen:
        switch (buttonType) {
          case ButtonType.signUp:
            throw ArgumentError(
              'Bad Argument! Biodata screen has no sign up button',
            );
          case ButtonType.signIn:
            throw ArgumentError(
              'Bad Argument! Biodata screen has no sign in button',
            );
          case ButtonType.submit:
            text = submitLiteral;
            break;
        }
        break;
    }

    return text;
  }

  Color get _buttonTextColor {
    late Color color;

    switch (from) {
      case From.introScreen:
        switch (buttonType) {
          case ButtonType.signUp:
            color = signUpLogInSubmitButtonTextColor;
            break;
          case ButtonType.signIn:
            color = introScreenSignInButtonTextColor;
            break;
          case ButtonType.submit:
            throw ArgumentError(
              'Bad Argument! Intro screen has no submit button',
            );
        }
        break;
      case From.signUpScreen:
        switch (buttonType) {
          case ButtonType.signUp:
            color = signUpLogInSubmitButtonTextColor;
            break;
          case ButtonType.signIn:
            throw ArgumentError(
              'Bad Argument! Sign up screen has no sign in button',
            );
          case ButtonType.submit:
            throw ArgumentError(
              'Bad Argument! Sign up screen has no submit button',
            );
        }
        break;
      case From.signInScreen:
        switch (buttonType) {
          case ButtonType.signUp:
            throw ArgumentError(
              'Bad Argument! Sign in screen has no sign up button',
            );
          case ButtonType.signIn:
            color = signUpLogInSubmitButtonTextColor;
            break;
          case ButtonType.submit:
            throw ArgumentError(
              'Bad Argument! Sign in screen has no submit button',
            );
        }
        break;
      case From.bioDataScreen:
        switch (buttonType) {
          case ButtonType.signUp:
            throw ArgumentError(
              'Bad Argument! Biodata screen has no sign up button',
            );
          case ButtonType.signIn:
            throw ArgumentError(
              'Bad Argument! Biodata screen has no sign in button',
            );
          case ButtonType.submit:
            color = signUpLogInSubmitButtonTextColor;
            break;
        }
        break;
    }

    return color;
  }
}
