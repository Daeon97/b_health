// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:b_health/views/widgets/auth_related_screens/sign_in_sign_up_submit_button.dart';
import 'package:b_health/views/widgets/auth_related_screens/sign_in_sign_up_submit_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _emailAddressController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _emailAddressController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _emailAddressController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();

    super.dispose();
  }

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
                  const Text(
                    signUpLiteral,
                    style: TextStyle(
                      fontSize: largeSpacing - tinySpacing,
                      color: primaryColor,
                      fontFamily: pacifico,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Image.asset(
                    signUpImagePath,
                  ),
                  const SizedBox(
                    height: largeSpacing + spacing,
                  ),
                  FormField(
                    key: _formKey,
                    builder: (formFieldState) => Column(
                      children: [
                        SignInSignUpSubmitField(
                          fieldType: FieldType.emailAddress,
                          fieldController: _emailAddressController,
                        ),
                        const SizedBox(
                          height: spacing,
                        ),
                        SignInSignUpSubmitField(
                          fieldType: FieldType.password,
                          fieldController: _passwordController,
                        ),
                        const SizedBox(
                          height: spacing,
                        ),
                        SignInSignUpSubmitField(
                          fieldType: FieldType.confirmPassword,
                          fieldController: _confirmPasswordController,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: spacing,
                  ),
                  SignInSignUpSubmitButton(
                    buttonType: ButtonType.signUp,
                    from: From.signUpScreen,
                    formKey: _formKey,
                  ),
                  const SizedBox(
                    height: spacing,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: alreadyHaveAnAccountLiteral,
                          style: TextStyle(
                            fontSize:
                                veryTinySpacing + tinySpacing + smallSpacing,
                            color: primaryColor,
                            fontFamily: inter,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const TextSpan(
                          text: whiteSpace,
                        ),
                        TextSpan(
                          text: logInLiteral,
                          style: const TextStyle(
                            fontSize:
                                veryTinySpacing + tinySpacing + smallSpacing,
                            color: primaryColor,
                            fontFamily: inter,
                            fontWeight: FontWeight.w700,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // TODO: Implement onTap
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
