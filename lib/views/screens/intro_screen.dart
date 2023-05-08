// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:b_health/views/widgets/auth_related_screens/sign_in_sign_up_submit_button.dart';
import 'package:b_health/views/widgets/intro_screen/intro_text.dart';
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
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Image.asset(
                authBottomImagePath,
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                vertical: largeSpacing + spacing,
                horizontal: spacing,
              ),
              child: Column(
                children: [
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
                  const SignInSignUpSubmitButton(
                    buttonType: ButtonType.signUp,
                    from: From.introScreen,
                  ),
                  const SizedBox(
                    height: spacing,
                  ),
                  const SignInSignUpSubmitButton(
                    buttonType: ButtonType.signIn,
                    from: From.introScreen,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
