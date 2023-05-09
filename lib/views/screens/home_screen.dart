// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Image.asset(
                authBottomImagePath,
              ),
            ),
            SingleChildScrollView(
              // padding: const EdgeInsets.symmetric(
              //   vertical: largeSpacing + spacing,
              //   horizontal: spacing,
              // ),
              child: Column(
                children: [
                  Container(
                    height: homeTopLayoutHeight,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(
                      spacing,
                    ),
                    decoration: const BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(
                          homeTopLayoutBorderRadius,
                        ),
                      ),
                    ),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: homeCircleAvatarRadius,
                                backgroundColor: Colors.white,
                              ),
                              const SizedBox(
                                height: smallSpacing,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Hi Lily,',
                                      style: TextStyle(
                                        fontSize:
                                            spacing + tinySpacing + tinySpacing,
                                        color: Colors.white,
                                        fontFamily: pacifico,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: newLine,
                                    ),
                                    TextSpan(
                                      text: newLine,
                                    ),
                                    TextSpan(
                                      text: howAreYouTodayLiteral,
                                      style: TextStyle(
                                        fontSize: spacing - tinySpacing,
                                        color: Colors.white,
                                        fontFamily: inter,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: spacing,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                    homeTakeAssessmentButtonColor,
                                  ),
                                  shape:
                                      MaterialStatePropertyAll<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        spacing + smallSpacing,
                                      ),
                                    ),
                                  ),
                                  padding: MaterialStatePropertyAll<
                                      EdgeInsetsGeometry>(
                                    EdgeInsets.symmetric(
                                      vertical: veryTinySpacing +
                                          tinySpacing +
                                          smallSpacing,
                                      horizontal: spacing,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  takeAssessmentLiteral,
                                  style: TextStyle(
                                    fontSize: spacing - veryTinySpacing,
                                    color: Colors.white,
                                    fontFamily: inter,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Image.asset(
                            homeTopImage,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
