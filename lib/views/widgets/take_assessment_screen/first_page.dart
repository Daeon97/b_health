// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:b_health/views/widgets/take_assessment_screen/question.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({
    required this.pageController,
    super.key,
  });

  final PageController pageController;

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  late TextEditingController _questionOneController;
  late TextEditingController _questionThreeController;
  late TextEditingController _questionFiveController;
  late TextEditingController _questionSevenController;
  late TextEditingController _questionElevenController;
  late TextEditingController _questionTwelveFirstController;
  late TextEditingController _questionTwelveSecondController;
  late TextEditingController _questionFourteenController;

  @override
  void initState() {
    _questionOneController = TextEditingController();
    _questionThreeController = TextEditingController();
    _questionFiveController = TextEditingController();
    _questionSevenController = TextEditingController();
    _questionElevenController = TextEditingController();
    _questionTwelveFirstController = TextEditingController();
    _questionTwelveSecondController = TextEditingController();
    _questionFourteenController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _questionOneController.dispose();
    _questionThreeController.dispose();
    _questionFiveController.dispose();
    _questionSevenController.dispose();
    _questionElevenController.dispose();
    _questionTwelveFirstController.dispose();
    _questionTwelveSecondController.dispose();
    _questionFourteenController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: largeSpacing + spacing,
            left: spacing,
            right: spacing,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Question(
                text: questionOneLiteral,
                fieldController: _questionOneController,
              ),
              const Question(
                text: questionTwoLiteral,
                options: <String>[
                  yesLiteral,
                  noLiteral,
                  notSureLiteral,
                ],
              ),
              Question(
                text: questionThreeLiteral,
                fieldController: _questionThreeController,
                keyboardType: TextInputType.text,
              ),
              const Question(
                text: questionFourLiteral,
                options: <String>[
                  yesLiteral,
                  noLiteral,
                  notSureLiteral,
                ],
              ),
              Question(
                text: questionFiveLiteral,
                fieldController: _questionFiveController,
              ),
              const Question(
                text: questionSixLiteral,
                options: <String>[
                  yesLiteral,
                  noLiteral,
                ],
              ),
              Question(
                text: questionSevenLiteral,
                fieldController: _questionSevenController,
              ),
              const Question(
                text: questionEightLiteral,
                options: <String>[
                  yesLiteral,
                  noLiteral,
                ],
              ),
              const Question(
                text: questionNineLiteral,
                options: <String>[
                  yesLiteral,
                  noLiteral,
                  notSureLiteral,
                ],
              ),
              const Question(
                text: questionTenLiteral,
                options: <String>[
                  yesLiteral,
                  noLiteral,
                ],
              ),
              Question(
                text: questionElevenLiteral,
                fieldController: _questionElevenController,
              ),
              Question(
                text: questionTwelveLiteral,
                fieldController: _questionTwelveFirstController,
                fieldController2: _questionTwelveSecondController,
              ),
              const Question(
                text: questionThirteenLiteral,
                options: <String>[
                  yesLiteral,
                  noLiteral,
                ],
              ),
              Question(
                text: questionFourteenLiteral,
                fieldController: _questionFourteenController,
              ),
              const SizedBox(
                height: spacing + tinySpacing + tinySpacing,
              ),
              ElevatedButton(
                onPressed: () => widget.pageController.nextPage(
                  duration: const Duration(
                    milliseconds: pageAnimationDurationInMilliSeconds,
                  ),
                  curve: Curves.easeIn,
                ),
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll<Color>(
                    homeTakeAssessmentAndAssessmentNextButtonColor,
                  ),
                  shape: MaterialStatePropertyAll<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        spacing + smallSpacing,
                      ),
                    ),
                  ),
                  padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
                    EdgeInsets.all(
                      spacing,
                    ),
                  ),
                ),
                child: const Center(
                  child: Text(
                    nextLiteral,
                    style: TextStyle(
                      fontSize: spacing - tinySpacing - tinySpacing,
                      color: Colors.white,
                      fontFamily: inter,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
