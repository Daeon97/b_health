// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:b_health/views/widgets/take_assessment_screen/field.dart';
import 'package:b_health/views/widgets/take_assessment_screen/question.dart';
import 'package:flutter/material.dart';

class TakeAssessmentScreen extends StatefulWidget {
  const TakeAssessmentScreen({super.key});

  @override
  State<TakeAssessmentScreen> createState() => _TakeAssessmentScreenState();
}

class _TakeAssessmentScreenState extends State<TakeAssessmentScreen> {
  late TextEditingController questionOneController;

  @override
  void initState() {
    questionOneController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    questionOneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: largeSpacing + spacing,
              horizontal: spacing,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    CircleAvatar(
                      radius: homeCircleAvatarRadius,
                      backgroundColor: primaryColor,
                    ),
                    Expanded(
                      child: Text(
                        assessmentLiteral,
                        style: TextStyle(
                          fontSize: spacing + tinySpacing + tinySpacing,
                          color: Colors.black,
                          fontFamily: pacifico,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Question(
                  text: questionOneLiteral,
                  fieldController: questionOneController,
                ),
                const Question(
                  text: questionTwoLiteral,
                ),
              ],
            ),
          ),
        ),
      );
}
