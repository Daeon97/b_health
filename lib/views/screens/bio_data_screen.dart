// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:b_health/views/widgets/sign_in_sign_up_submit/sign_in_sign_up_submit_button.dart';
import 'package:b_health/views/widgets/sign_in_sign_up_submit/sign_in_sign_up_submit_field.dart';
import 'package:flutter/material.dart';

class BioDataScreen extends StatefulWidget {
  const BioDataScreen({super.key});

  @override
  State<BioDataScreen> createState() => _BioDataScreenState();
}

class _BioDataScreenState extends State<BioDataScreen> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _fullNameController;
  late final TextEditingController _dateController;
  late final TextEditingController _genderController;
  late final TextEditingController _bloodGroupController;
  late final TextEditingController _weightController;
  late final TextEditingController _heightController;
  late final TextEditingController _maritalStatusController;
  late final TextEditingController _occupationController;
  late final TextEditingController _chronicMedicalConditionController;
  late final TextEditingController _familyHistoryOfCancerController;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _fullNameController = TextEditingController();
    _dateController = TextEditingController();
    _genderController = TextEditingController();
    _bloodGroupController = TextEditingController();
    _weightController = TextEditingController();
    _heightController = TextEditingController();
    _maritalStatusController = TextEditingController();
    _occupationController = TextEditingController();
    _chronicMedicalConditionController = TextEditingController();
    _familyHistoryOfCancerController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _dateController.dispose();
    _genderController.dispose();
    _bloodGroupController.dispose();
    _weightController.dispose();
    _heightController.dispose();
    _maritalStatusController.dispose();
    _occupationController.dispose();
    _chronicMedicalConditionController.dispose();
    _familyHistoryOfCancerController.dispose();

    super.dispose();
  }

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
                  const Text(
                    bioDataLiteral,
                    style: TextStyle(
                      fontSize: largeSpacing - tinySpacing,
                      color: primaryColor,
                      fontFamily: pacifico,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: spacing + smallSpacing,
                  ),
                  FormField(
                    key: _formKey,
                    builder: (formFieldState) => Column(
                      children: [
                        SignInSignUpSubmitField(
                          fieldType: FieldType.fullName,
                          fieldController: _fullNameController,
                        ),
                        const SizedBox(
                          height: spacing,
                        ),
                        SignInSignUpSubmitField(
                          fieldType: FieldType.dateOfBirth,
                          fieldController: _dateController,
                        ),
                        const SizedBox(
                          height: spacing,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SignInSignUpSubmitField(
                                fieldType: FieldType.gender,
                                fieldController: _genderController,
                              ),
                            ),
                            const SizedBox(
                              width: spacing,
                            ),
                            Expanded(
                              child: SignInSignUpSubmitField(
                                fieldType: FieldType.bloodGroup,
                                fieldController: _bloodGroupController,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: spacing,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SignInSignUpSubmitField(
                                fieldType: FieldType.weight,
                                fieldController: _weightController,
                              ),
                            ),
                            const SizedBox(
                              width: spacing,
                            ),
                            Expanded(
                              child: SignInSignUpSubmitField(
                                fieldType: FieldType.height,
                                fieldController: _heightController,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: spacing,
                        ),
                        SignInSignUpSubmitField(
                          fieldType: FieldType.maritalStatus,
                          fieldController: _maritalStatusController,
                        ),
                        const SizedBox(
                          height: spacing,
                        ),
                        SignInSignUpSubmitField(
                          fieldType: FieldType.occupation,
                          fieldController: _occupationController,
                        ),
                        const SizedBox(
                          height: spacing,
                        ),
                        SignInSignUpSubmitField(
                          fieldType: FieldType.chronicMedicalCondition,
                          fieldController: _chronicMedicalConditionController,
                        ),
                        const SizedBox(
                          height: spacing,
                        ),
                        SignInSignUpSubmitField(
                          fieldType: FieldType.familyHistoryOfCancer,
                          fieldController: _familyHistoryOfCancerController,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: spacing + smallSpacing,
                  ),
                  SignInSignUpSubmitButton(
                    buttonType: ButtonType.submit,
                    from: From.bioDataScreen,
                    formKey: _formKey,
                  ),
                  const SizedBox(
                    height: spacing,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
