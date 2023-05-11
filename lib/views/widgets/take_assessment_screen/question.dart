// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:b_health/views/widgets/take_assessment_screen/field.dart';
import 'package:b_health/views/widgets/take_assessment_screen/options.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({
    required this.text,
    this.imagePath,
    this.imagePath2,
    this.title,
    this.footer,
    this.fieldController,
    this.fieldController2,
    this.keyboardType = TextInputType.number,
    this.options,
    super.key,
  });

  final String text;
  final String? imagePath;
  final String? imagePath2;
  final String? title;
  final String? footer;
  final TextEditingController? fieldController;
  final TextEditingController? fieldController2;
  final TextInputType keyboardType;
  final List<String>? options;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          top: spacing,
        ),
        child: Column(
          children: [
            if (title == null)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    leadingBullet + whiteSpace + whiteSpace,
                    style: TextStyle(
                      fontSize: spacing - tinySpacing,
                      color: primaryColor,
                      fontFamily: inter,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Expanded(
                    child: _primaryChild,
                  ),
                ],
              )
            else
              _primaryChild,
            if (fieldController != null && fieldController2 == null)
              Field(
                fieldController: fieldController!,
                keyboardType: keyboardType,
              ),
            if (fieldController != null && fieldController2 != null)
              Padding(
                padding: const EdgeInsets.only(
                  top: smallSpacing,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            startLiteral,
                            style: TextStyle(
                              fontSize: spacing -
                                  tinySpacing -
                                  tinySpacing -
                                  veryTinySpacing,
                              color: primaryColor,
                              fontFamily: inter,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Field(
                            fieldController: fieldController!,
                            keyboardType: keyboardType,
                            enable: false,
                            hint: assessmentHintLiteral,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: largeSpacing + spacing,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            stopLiteral,
                            style: TextStyle(
                              fontSize: spacing -
                                  tinySpacing -
                                  tinySpacing -
                                  veryTinySpacing,
                              color: primaryColor,
                              fontFamily: inter,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Field(
                            fieldController: fieldController2!,
                            keyboardType: keyboardType,
                            enable: false,
                            hint: assessmentHintLiteral,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            if (options != null)
              Options(
                options: options!,
                optionsGroupValue: emptyString,
              ),
            if (imagePath != null && title == null && footer != null)
              if (imagePath2 != null)
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                            imagePath!,
                          ),
                          const SizedBox(
                            height: smallSpacing,
                          ),
                          Text(
                            footer!,
                            style: const TextStyle(
                              fontSize:
                                  smallSpacing + tinySpacing + tinySpacing,
                              color: primaryColor,
                              fontFamily: inter,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                            imagePath2!,
                          ),
                          const SizedBox(
                            height: smallSpacing,
                          ),
                          Text(
                            footer!,
                            style: const TextStyle(
                              fontSize:
                                  smallSpacing + tinySpacing + tinySpacing,
                              color: primaryColor,
                              fontFamily: inter,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              else
                Image.asset(imagePath!),
            if (imagePath != null &&
                imagePath2 == null &&
                title == null &&
                footer != null)
              const SizedBox(
                height: smallSpacing,
              ),
            if (imagePath != null &&
                imagePath2 == null &&
                title == null &&
                footer != null)
              Text(
                footer!,
                style: const TextStyle(
                  fontSize: smallSpacing + tinySpacing + tinySpacing,
                  color: primaryColor,
                  fontFamily: inter,
                  fontWeight: FontWeight.w400,
                ),
              ),
          ],
        ),
      );

  Widget get _primaryChild => Column(
        children: [
          if (imagePath != null && title != null && footer == null)
            Image.asset(imagePath!),
          RichText(
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
                if (title != null)
                  const TextSpan(
                    text: newLine,
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
          ),
        ],
      );
}
