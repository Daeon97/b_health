// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:flutter/material.dart';

class AssessmentResultScreen extends StatelessWidget {
  const AssessmentResultScreen({super.key});

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
                  Image.asset(
                    assessmentImagePath,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: hundredPercentSafeLiteral,
                        ),
                        TextSpan(
                          text: newLine,
                        ),
                        TextSpan(
                          text: andInTheClearLiteral,
                        ),
                      ],
                      style: TextStyle(
                        fontSize: (spacing + smallSpacing) - tinySpacing,
                        color: primaryColor,
                        fontFamily: inter,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: veryLargeSpacing,
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
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
                      padding:
                          const MaterialStatePropertyAll<EdgeInsetsGeometry>(
                        EdgeInsets.all(
                          spacing,
                        ),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        doneLiteral,
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
          ],
        ),
      );
}
