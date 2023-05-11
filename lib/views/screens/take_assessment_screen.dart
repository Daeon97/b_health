// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:b_health/views/widgets/take_assessment_screen/first_page.dart';
import 'package:b_health/views/widgets/take_assessment_screen/second_page.dart';
import 'package:flutter/material.dart';

class TakeAssessmentScreen extends StatefulWidget {
  const TakeAssessmentScreen({super.key});

  @override
  State<TakeAssessmentScreen> createState() => _TakeAssessmentScreenState();
}

class _TakeAssessmentScreenState extends State<TakeAssessmentScreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: largeSpacing + spacing,
                bottom: spacing,
                left: spacing,
                right: spacing,
              ),
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: homeCircleAvatarRadius,
                    backgroundColor: primaryColor,
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional.center,
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
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  FirstPage(
                    pageController: _pageController,
                  ),
                  SecondPage(
                    pageController: _pageController,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
