// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:b_health/views/widgets/take_assessment_screen/field.dart';
import 'package:b_health/views/widgets/take_assessment_screen/question.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({
    required this.pageController,
    super.key,
  });

  final PageController pageController;

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  late TextEditingController _fullNameController;
  late TextEditingController _addressController;
  late TextEditingController _phoneNumberController;

  @override
  void initState() {
    _fullNameController = TextEditingController();
    _addressController = TextEditingController();
    _phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _addressController.dispose();
    _phoneNumberController.dispose();
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
              const Question(
                text: questionTwentySevenLiteral,
                options: <String>[
                  yesLiteral,
                  noLiteral,
                ],
              ),
              const Question(
                text: questionTwentyEightLiteral,
                options: <String>[
                  yesLiteral,
                  noLiteral,
                ],
              ),
              const Question(
                text: questionTwentyNineLiteral,
              ),
              const SizedBox(
                height: spacing,
              ),
              const Text(
                fullNameLiteral,
                style: TextStyle(
                  fontSize: spacing - tinySpacing,
                  color: primaryColor,
                  fontFamily: inter,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Field(
                fieldController: _fullNameController,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: spacing,
              ),
              const Text(
                addressLiteral,
                style: TextStyle(
                  fontSize: spacing - tinySpacing,
                  color: primaryColor,
                  fontFamily: inter,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Field(
                fieldController: _addressController,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(
                height: spacing,
              ),
              const Text(
                phoneNumberLiteral,
                style: TextStyle(
                  fontSize: spacing - tinySpacing,
                  color: primaryColor,
                  fontFamily: inter,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Field(
                fieldController: _phoneNumberController,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: spacing + tinySpacing + tinySpacing,
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pushReplacementNamed(
                  assessmentResultScreenRoute,
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
                    submitLiteral,
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
