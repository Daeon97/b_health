// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:b_health/views/widgets/take_assessment_screen/field.dart';
import 'package:flutter/material.dart';

enum QuestionType { normal, imageOnTop }

class Question extends StatelessWidget {
  const Question({
    required this.text,
    this.imagePath,
    this.title,
    this.questionType = QuestionType.normal,
    this.fieldController,
    super.key,
  });

  final QuestionType questionType;
  final String text;
  final String? imagePath;
  final String? title;
  final TextEditingController? fieldController;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          top: spacing,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _primaryChild,
            if (fieldController != null)
              Field(
                fieldController: fieldController!,
              ),
          ],
        ),
      );

  Widget get _primaryChild => RichText(
        text: TextSpan(
          children: [
            if (title != null)
              TextSpan(
                text: title,
                style: const TextStyle(
                  fontSize: spacing - tinySpacing - tinySpacing,
                  color: primaryColor,
                  fontFamily: inter,
                  fontWeight: FontWeight.w700,
                ),
              ),
            if (title == null)
              const TextSpan(
                text: leadingBullet + whiteSpace + whiteSpace,
                style: TextStyle(
                  fontSize: spacing - tinySpacing,
                  color: primaryColor,
                  fontFamily: inter,
                  fontWeight: FontWeight.w400,
                ),
              ),
            TextSpan(
              text: text,
              style: TextStyle(
                fontSize: title != null
                    ? spacing - tinySpacing - tinySpacing
                    : spacing - tinySpacing,
                color: primaryColor,
                fontFamily: inter,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      );
}
