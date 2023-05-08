// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:flutter/material.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key});

  @override
  Widget build(BuildContext context) => RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            const TextSpan(
              text: startYourJourneyLiteral,
            ),
            const TextSpan(
              text: newLine,
            ),
            const TextSpan(
              text: withLiteral,
            ),
            const TextSpan(
              text: whiteSpace,
            ),
            const TextSpan(
              text: bhealLiteral,
            ),
            WidgetSpan(
              child: Image.asset(
                bHealthLogoImagePath,
              ),
              alignment: PlaceholderAlignment.middle,
            ),
            const TextSpan(
              text: hLiteral,
            ),
          ],
          style: const TextStyle(
            fontSize: smallSpacing + spacing,
            color: primaryColor,
            fontFamily: pacifico,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
}
