// ignore_for_file: public_member_api_docs

import 'package:b_health/blocs/screen_to_show_cubit/screen_to_show_cubit.dart';
import 'package:b_health/models/screen_to_show.dart';
import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/strings.dart';
import 'package:b_health/views/screens/assessment_result_screen.dart';
import 'package:b_health/views/screens/bio_data_screen.dart';
import 'package:b_health/views/screens/home_screen.dart';
import 'package:b_health/views/screens/intro_screen.dart';
import 'package:b_health/views/screens/sign_in_screen.dart';
import 'package:b_health/views/screens/sign_up_screen.dart';
import 'package:b_health/views/screens/take_assessment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: _blocProviders,
        child: MaterialApp(
          onGenerateRoute: _routes,
        ),
      );

  List<BlocProvider> get _blocProviders => [
        BlocProvider<ScreenToShowCubit>(
          create: (_) => ScreenToShowCubit(),
        ),
      ];

  Route<String> _routes(RouteSettings settings) => MaterialPageRoute(
        builder: (_) {
          switch (settings.name) {
            case null:
            case defaultRoute:
              return BlocBuilder<ScreenToShowCubit, ScreenToShowState>(
                builder: (ctx, screenToShowState) {
                  switch (screenToShowState.screen) {
                    case Screen.intro:
                      return const IntroScreen();
                    case Screen.signIn:
                      return const SignInScreen();
                    case Screen.signUp:
                      return const SignUpScreen();
                    case Screen.bioData:
                      return const BioDataScreen();
                    case Screen.home:
                      return const HomeScreen();
                  }
                },
              );
            case introScreenRoute:
              return const IntroScreen();
            case homeScreenRoute:
              return const HomeScreen();
            case signInScreenRoute:
              return const SignInScreen();
            case signUpScreenRoute:
              return const SignUpScreen();
            case bioDataScreenRoute:
              return const BioDataScreen();
            case takeAssessmentScreenRoute:
              return const TakeAssessmentScreen();
            case assessmentResultScreenRoute:
              return const AssessmentResultScreen();
            default:
              return const SizedBox.shrink();
          }
        },
      );
}
