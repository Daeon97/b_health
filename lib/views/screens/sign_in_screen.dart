// ignore_for_file: public_member_api_docs

import 'package:b_health/blocs/screen_to_show_cubit/screen_to_show_cubit.dart';
import 'package:b_health/models/screen_to_show.dart';
import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:b_health/views/widgets/sign_in_sign_up_submit/sign_in_sign_up_submit_button.dart';
import 'package:b_health/views/widgets/sign_in_sign_up_submit/sign_in_sign_up_submit_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _emailAddressController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _emailAddressController = TextEditingController();
    _passwordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _emailAddressController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: AlignmentDirectional.center,
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
                    logInLiteral,
                    style: TextStyle(
                      fontSize: largeSpacing - tinySpacing,
                      color: primaryColor,
                      fontFamily: pacifico,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Image.asset(
                    signInImagePath,
                  ),
                  const SizedBox(
                    height: spacing + smallSpacing,
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: veryTinySpacing + tinySpacing,
                  ),
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: InkWell(
                      onTap: () {
                        // TODO: Implement onTap
                      },
                      borderRadius: BorderRadius.circular(
                        smallSpacing,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(
                          smallSpacing,
                        ),
                        child: Text(
                          forgotPasswordLiteral,
                          style: TextStyle(
                            fontSize:
                                veryTinySpacing + tinySpacing + smallSpacing,
                            color: primaryColor,
                            fontFamily: inter,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: smallSpacing,
                  ),
                  SignInSignUpSubmitButton(
                    buttonType: ButtonType.signIn,
                    from: From.signInScreen,
                    formKey: _formKey,
                  ),
                  const SizedBox(
                    height: spacing,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: dontHaveAnAccountLiteral,
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
                          text: signUpLiteral,
                          style: const TextStyle(
                            fontSize:
                                veryTinySpacing + tinySpacing + smallSpacing,
                            color: primaryColor,
                            fontFamily: inter,
                            fontWeight: FontWeight.w700,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              BlocProvider.of<ScreenToShowCubit>(context)
                                  .setScreenToShow(
                                Screen.signUp,
                              );
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
