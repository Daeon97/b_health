// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/strings.dart';
import 'package:b_health/views/screens/home_screen.dart';
import 'package:b_health/views/screens/intro_screen.dart';
import 'package:b_health/views/screens/sign_in_screen.dart';
import 'package:b_health/views/screens/sign_up_screen.dart';
import 'package:b_health/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: SignInScreen(),
        // onGenerateRoute: _routes,
      );

  Route<String> _routes(RouteSettings settings) => MaterialPageRoute(
        builder: (_) {
          switch (settings.name) {
            case null:
            case defaultRoute:
              continue defaultCase;
            case introScreenRoute:
              return const IntroScreen();
            case homeScreenRoute:
              return const HomeScreen();
            case signInScreenRoute:
              return const SignInScreen();
            case signUpScreenRoute:
              return const SignUpScreen();
            defaultCase:
            default:
              return const SplashScreen();
          }
        },
      );
}
