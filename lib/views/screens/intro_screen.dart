// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:b_health/views/widgets/intro_screen/intro_text.dart';
import 'package:b_health/views/widgets/intro_screen/sign_in_sign_up_button.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: largeSpacing + spacing,
              ),
              Image.asset(
                introImagePath,
              ),
              const SizedBox(
                height: veryLargeSpacing,
              ),
              const IntroText(),
              const SizedBox(
                height: veryLargeSpacing,
              ),
              const SignInSignUpButton(
                buttonType: ButtonType.signUp,
              ),
              const SizedBox(
                height: spacing,
              ),
              const SignInSignUpButton(
                buttonType: ButtonType.signIn,
              ),
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Image.asset(
                  authBottomImagePath,
                ),
              ),
            ],
          ),
        ),
      );
}
