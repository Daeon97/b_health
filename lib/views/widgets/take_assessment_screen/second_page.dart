// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:b_health/views/widgets/take_assessment_screen/question.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({
    required this.pageController,
    super.key,
  });

  final PageController pageController;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
              const Question(
                text: questionFifteenLiteral,
                options: <String>[
                  yesLiteral,
                  noLiteral,
                  notSureLiteral,
                ],
              ),
              const Question(
                text: questionSixteenLiteral,
              ),
              Row(
                children: const [
                  Expanded(
                    child: Question(
                      title: questionSeventeenHeaderLiteral,
                      text: questionSeventeenLiteral,
                      imagePath: questionSixteenImagePath,
                    ),
                  ),
                  Expanded(
                    child: Question(
                      title: questionEighteenHeaderLiteral,
                      text: questionEighteenLiteral,
                      imagePath: questionEighteenImagePath,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Expanded(
                    child: Question(
                      title: questionNineteenHeaderLiteral,
                      text: questionNineteenLiteral,
                      imagePath: questionNineteenImagePath,
                    ),
                  ),
                  Expanded(
                    child: Question(
                      title: questionTwentyHeaderLiteral,
                      text: questionTwentyLiteral,
                      imagePath: questionSeventeenImagePath,
                    ),
                  ),
                ],
              ),
              const Question(
                text: questionTwentyOneLiteral,
                imagePath: questionTwentyImagePath,
                footer: questionTwentyOneFooterLiteral,
                options: <String>[
                  yesLiteral,
                  noLiteral,
                ],
              ),
              const Question(
                text: questionTwentyTwoLiteral,
                imagePath: questionTwentyOneImagePath,
                footer: questionTwentyTwoFooterLiteral,
                options: <String>[
                  yesLiteral,
                  noLiteral,
                ],
              ),
              const Question(
                text: questionTwentyThreeLiteral,
                imagePath: questionTwentyTwoImagePath,
                footer: questionTwentyThreeFooterLiteral,
                options: <String>[
                  yesLiteral,
                  noLiteral,
                ],
              ),
              const Question(
                text: questionTwentyFourLiteral,
                imagePath: questionTwentyThreeImagePath,
                imagePath2: questionTwentyFourImagePath,
                footer: questionTwentyFourFooterLiteral,
                options: <String>[
                  yesLiteral,
                  noLiteral,
                ],
              ),
              const Question(
                text: questionTwentyFiveLiteral,
                imagePath: questionTwentyFiveImagePath,
                footer: questionTwentyFiveFooterLiteral,
                options: <String>[
                  yesLiteral,
                  noLiteral,
                ],
              ),
              const Question(
                text: questionTwentySixLiteral,
                imagePath: questionTwentySixImagePath,
                footer: questionTwentySixFooterLiteral,
                options: <String>[
                  yesLiteral,
                  noLiteral,
                ],
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
