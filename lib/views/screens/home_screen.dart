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
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: primaryColor,
          selectedItemColor: homeSelectedItemColor,
          selectedLabelStyle: const TextStyle(
            fontSize: smallSpacing + tinySpacing + tinySpacing,
            fontFamily: inter,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: smallSpacing + tinySpacing + tinySpacing,
            fontFamily: inter,
            fontWeight: FontWeight.w500,
          ),
          unselectedItemColor: Colors.white,
          items: List<BottomNavigationBarItem>.generate(
            tinySpacing.toInt() + tinySpacing.toInt(),
            (index) => BottomNavigationBarItem(
              icon: Image.asset(
                index == nilSpacing.toInt()
                    ? homeImagePath
                    : index == veryTinySpacing.toInt()
                        ? historyImagePath
                        : index == veryTinySpacing.toInt() + tinySpacing.toInt()
                            ? settingImagePath
                            : profileImagePath,
                width: (smallSpacing + spacing) - tinySpacing,
                height: (smallSpacing + spacing) - tinySpacing,
              ),
              label: index == nilSpacing.toInt()
                  ? homeLiteral
                  : index == veryTinySpacing.toInt()
                      ? historyLiteral
                      : index == veryTinySpacing.toInt() + tinySpacing.toInt()
                          ? profileLiteral
                          : settingLiteral,
            ),
          ),
        ),
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                              const CircleAvatar(
                                radius: homeCircleAvatarRadius,
                                backgroundColor: Colors.white,
                              ),
                              const SizedBox(
                                height: smallSpacing,
                              ),
                              RichText(
                                text: const TextSpan(
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
                                onPressed: () =>
                                    Navigator.of(context).pushNamed(
                                  takeAssessmentScreenRoute,
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      const MaterialStatePropertyAll<Color>(
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
                                  padding: const MaterialStatePropertyAll<
                                      EdgeInsetsGeometry>(
                                    EdgeInsets.symmetric(
                                      vertical: veryTinySpacing +
                                          tinySpacing +
                                          smallSpacing,
                                      horizontal: spacing,
                                    ),
                                  ),
                                ),
                                child: const Text(
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
                            homeTopImagePath,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: spacing,
                      right: spacing,
                      top: spacing,
                    ),
                    child: Text(
                      scheduleLiteral,
                      style: TextStyle(
                        fontSize: spacing - tinySpacing - tinySpacing,
                        color: primaryColor,
                        fontFamily: inter,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  CalendarDatePicker(
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now(),
                    onDateChanged: (_) {},
                  ),
                  const SizedBox(
                    height: spacing,
                  ),
                  SizedBox(
                    height: homeCardHeight,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tinySpacing.toInt() + veryTinySpacing.toInt(),
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(
                          spacing,
                        ),
                        child: PhysicalModel(
                          elevation: 5,
                          color: homeCardColor,
                          borderRadius: BorderRadius.circular(
                            spacing + tinySpacing + tinySpacing,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(
                              spacing,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      index == nilSpacing.toInt()
                                          ? weigthLiteral
                                          : index == veryTinySpacing.toInt()
                                              ? heightLiteral
                                              : pulseLiteral,
                                      style: const TextStyle(
                                        fontSize: spacing -
                                            tinySpacing -
                                            tinySpacing -
                                            veryTinySpacing,
                                        color: Colors.black,
                                        fontFamily: inter,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: spacing,
                                    ),
                                    Image.asset(
                                      index == nilSpacing.toInt()
                                          ? weightImagePath
                                          : index == veryTinySpacing.toInt()
                                              ? heightImagePath
                                              : pulseImagePath,
                                      width: smallSpacing + tinySpacing,
                                      height: smallSpacing + tinySpacing,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: spacing,
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: index == nilSpacing.toInt()
                                            ? eightFiveLiteral
                                            : index == veryTinySpacing.toInt()
                                                ? oneSevenThreeLiteral
                                                : oneTwoTwoLiteral,
                                        style: const TextStyle(
                                          fontSize: spacing + smallSpacing,
                                          color: Colors.black,
                                          fontFamily: inter,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: whiteSpace,
                                      ),
                                      const TextSpan(
                                        text: whiteSpace,
                                      ),
                                      TextSpan(
                                        text: index == nilSpacing.toInt()
                                            ? kgLiteral
                                            : index == veryTinySpacing.toInt()
                                                ? cmLiteral
                                                : bpmLiteral,
                                        style: const TextStyle(
                                          fontSize: spacing -
                                              tinySpacing -
                                              tinySpacing -
                                              veryTinySpacing,
                                          color: Colors.black,
                                          fontFamily: inter,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
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
