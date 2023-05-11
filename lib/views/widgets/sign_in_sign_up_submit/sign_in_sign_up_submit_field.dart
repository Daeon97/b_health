// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:flutter/material.dart';

enum FieldType {
  emailAddress,
  password,
  confirmPassword,
  fullName,
  dateOfBirth,
  gender,
  bloodGroup,
  weight,
  height,
  maritalStatus,
  occupation,
  chronicMedicalCondition,
  familyHistoryOfCancer,
}

class SignInSignUpSubmitField extends StatefulWidget {
  const SignInSignUpSubmitField({
    required this.fieldType,
    required this.fieldController,
    super.key,
  });

  final FieldType fieldType;
  final TextEditingController fieldController;

  @override
  State<SignInSignUpSubmitField> createState() =>
      _SignInSignUpSubmitFieldState();
}

class _SignInSignUpSubmitFieldState extends State<SignInSignUpSubmitField> {
  late final FocusNode _focusNode;
  late final ValueNotifier<bool> _focused;
  late final ValueNotifier<bool>? _obscureText;

  @override
  void initState() {
    _focusNode = FocusNode()..addListener(_onFocusChanged);
    _focused = ValueNotifier<bool>(
      false,
    );
    _computeObscurableText();
    super.initState();
  }

  @override
  void dispose() {
    _focusNode
      ..removeListener(_onFocusChanged)
      ..dispose();
    _focused.dispose();
    _obscureText?.dispose();

    super.dispose();
  }

  void _onFocusChanged() {
    _focused.value = _focusNode.hasFocus;
  }

  @override
  Widget build(BuildContext context) => ValueListenableBuilder<bool>(
        valueListenable: _focused,
        builder: (_, focusedValue, __) => _obscureText != null
            ? ValueListenableBuilder<bool>(
                valueListenable: _obscureText!,
                builder: (_, obscureTextValue, __) => _child(
                  focusedValue,
                  obscureTextValue,
                ),
              )
            : _child(
                focusedValue,
              ),
      );

  Widget _child(
    bool focusedValue, [
    bool? obscureTextValue,
  ]) =>
      Column(
        children: [
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Text(
              _literal,
              style: const TextStyle(
                fontSize: spacing - tinySpacing,
                color: primaryColor,
                fontFamily: inter,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: smallSpacing,
          ),
          _computeField(
            focusedValue,
            obscureTextValue,
          ),
        ],
      );

  Widget _computeField(
    bool focusedValue, [
    bool? obscureTextValue,
  ]) {
    late Widget field;

    switch (widget.fieldType) {
      case FieldType.emailAddress:
      case FieldType.password:
      case FieldType.confirmPassword:
      case FieldType.fullName:
      case FieldType.weight:
      case FieldType.height:
        field = TextFormField(
          controller: widget.fieldController,
          focusNode: _focusNode,
          keyboardType: _keyboardType,
          obscureText: obscureTextValue ?? false,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            prefixIcon: _computePrefixIcon(
              focusedValue,
            ),
            suffixIcon: obscureTextValue != null
                ? _computeSuffixIcon(
                    focusedValue,
                    obscureTextValue,
                  )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                smallSpacing + spacing,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                smallSpacing + spacing,
              ),
              borderSide: const BorderSide(
                color: primaryColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: primaryColor,
              ),
              borderRadius: BorderRadius.circular(
                smallSpacing + spacing,
              ),
            ),
          ),
          validator: (value) =>
              value != null && value.isEmpty ? enterValidInputLiteral : null,
        );
        break;
      case FieldType.dateOfBirth:
        field = InkWell(
          borderRadius: BorderRadius.circular(
            smallSpacing + spacing,
          ),
          onTap: () {
            showDatePicker(
              context: context,
              initialDate: DateTime(
                initialDateYear,
                initialDateMonth,
                initialDateDay,
              ),
              firstDate: DateTime(
                firstDate,
              ),
              lastDate: DateTime(
                DateTime.now().year - 1,
              ),
              builder: (
                _,
                child,
              ) =>
                  Theme(
                data: ThemeData.light().copyWith(
                  colorScheme: const ColorScheme.light(
                    primary: primaryColor,
                  ),
                ),
                child: child ?? const SizedBox.shrink(),
              ),
            );
          },
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: widget.fieldController,
            enabled: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  smallSpacing + spacing,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  smallSpacing + spacing,
                ),
                borderSide: const BorderSide(
                  color: primaryColor,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  smallSpacing + spacing,
                ),
                borderSide: const BorderSide(
                  color: primaryColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: primaryColor,
                ),
                borderRadius: BorderRadius.circular(
                  smallSpacing + spacing,
                ),
              ),
            ),
            validator: (value) =>
                value != null && value.isEmpty ? enterValidInputLiteral : null,
          ),
        );
        break;
      case FieldType.gender:
      case FieldType.bloodGroup:
      case FieldType.maritalStatus:
      case FieldType.occupation:
      case FieldType.chronicMedicalCondition:
      case FieldType.familyHistoryOfCancer:
        field = DropdownButtonFormField<String>(
          items: _dropdownMenuItems,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (value) {
            // TODO: Implement onChanged
          },
          decoration: InputDecoration(
            // prefixIcon: _computePrefixIcon(
            //   focusedValue,
            // ),
            // suffixIcon: obscureTextValue != null
            //     ? _computeSuffixIcon(
            //         focusedValue,
            //         obscureTextValue,
            //       )
            //     : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                smallSpacing + spacing,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                smallSpacing + spacing,
              ),
              borderSide: const BorderSide(
                color: primaryColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: primaryColor,
              ),
              borderRadius: BorderRadius.circular(
                smallSpacing + spacing,
              ),
            ),
          ),
          validator: (value) =>
              value != null && value.isEmpty ? enterValidInputLiteral : null,
        );
        break;
    }

    return field;
  }

  List<DropdownMenuItem<String>> get _dropdownMenuItems {
    switch (widget.fieldType) {
      case FieldType.emailAddress:
      case FieldType.password:
      case FieldType.confirmPassword:
      case FieldType.fullName:
      case FieldType.dateOfBirth:
      case FieldType.weight:
      case FieldType.height:
        throw ArgumentError(
          '${widget.fieldType.name} is not supposed to be a dropdown',
        );
      case FieldType.gender:
        return List<DropdownMenuItem<String>>.generate(
          3,
          growable: false,
          (index) => DropdownMenuItem<String>(
            value: index == 0
                ? maleLiteral
                : index == 1
                    ? femaleLiteral
                    : otherLiteral,
            child: Text(
              index == 0
                  ? maleLiteral
                  : index == 1
                      ? femaleLiteral
                      : otherLiteral,
            ),
          ),
        );
      case FieldType.bloodGroup:
        return List<DropdownMenuItem<String>>.generate(
          4,
          growable: false,
          (index) => DropdownMenuItem<String>(
            value: index == 0
                ? aLiteral
                : index == 1
                    ? bLiteral
                    : index == 2
                        ? aBLiteral
                        : oLiteral,
            child: Text(
              index == 0
                  ? aLiteral
                  : index == 1
                      ? bLiteral
                      : index == 2
                          ? aBLiteral
                          : oLiteral,
            ),
          ),
        );
      case FieldType.maritalStatus:
        return List<DropdownMenuItem<String>>.generate(
          5,
          growable: false,
          (index) => DropdownMenuItem<String>(
            value: index == 0
                ? singleLiteral
                : index == 1
                    ? marriedLiteral
                    : index == 2
                        ? divorcedLiteral
                        : index == 3
                            ? widowedLiteral
                            : otherLiteral,
            child: Text(
              index == 0
                  ? singleLiteral
                  : index == 1
                      ? marriedLiteral
                      : index == 2
                          ? divorcedLiteral
                          : index == 3
                              ? widowedLiteral
                              : otherLiteral,
            ),
          ),
        );
      case FieldType.occupation:
        return List<DropdownMenuItem<String>>.generate(
          5,
          growable: false,
          (index) => DropdownMenuItem<String>(
            value: index == 0
                ? officeWorkerLiteral
                : index == 1
                    ? factoryWorkerLiteral
                    : index == 2
                        ? artisanWorkerLiteral
                        : index == 3
                            ? farmerLiteral
                            : otherLiteral,
            child: Text(
              index == 0
                  ? officeWorkerLiteral
                  : index == 1
                      ? factoryWorkerLiteral
                      : index == 2
                          ? artisanWorkerLiteral
                          : index == 3
                              ? farmerLiteral
                              : otherLiteral,
            ),
          ),
        );
      case FieldType.chronicMedicalCondition:
      case FieldType.familyHistoryOfCancer:
        return List<DropdownMenuItem<String>>.generate(
          2,
          growable: false,
          (index) => DropdownMenuItem<String>(
            value: index == 0 ? yesLiteral : noLiteral,
            child: Text(
              index == 0 ? yesLiteral : noLiteral,
            ),
          ),
        );
    }
  }

  void _computeObscurableText() {
    switch (widget.fieldType) {
      case FieldType.password:
      case FieldType.confirmPassword:
        _obscureText = ValueNotifier<bool>(
          true,
        );
        break;
      case FieldType.emailAddress:
      case FieldType.fullName:
      case FieldType.dateOfBirth:
      case FieldType.gender:
      case FieldType.bloodGroup:
      case FieldType.maritalStatus:
      case FieldType.occupation:
      case FieldType.weight:
      case FieldType.height:
      case FieldType.chronicMedicalCondition:
      case FieldType.familyHistoryOfCancer:
        _obscureText = null;
        break;
    }
  }

  String get _literal {
    switch (widget.fieldType) {
      case FieldType.emailAddress:
        return emailAddressLiteral;
      case FieldType.password:
        return passwordLiteral;
      case FieldType.confirmPassword:
        return confirmPasswordLiteral;
      case FieldType.fullName:
        return fullNameLiteral;
      case FieldType.dateOfBirth:
        return dateOfBirthLiteral;
      case FieldType.gender:
        return genderLiteral;
      case FieldType.bloodGroup:
        return bloodGroupLiteral;
      case FieldType.maritalStatus:
        return maritalStatusLiteral;
      case FieldType.occupation:
        return occupationLiteral;
      case FieldType.weight:
        return weightKgLiteral;
      case FieldType.height:
        return heightCmLiteral;
      case FieldType.chronicMedicalCondition:
        return doYouHaveAnyChronicMedicalConditionLiteral;
      case FieldType.familyHistoryOfCancer:
        return doYouHaveAFamilyHistoryOfCancerLiteral;
    }
  }

  TextInputType get _keyboardType {
    switch (widget.fieldType) {
      case FieldType.emailAddress:
        return TextInputType.emailAddress;
      case FieldType.password:
      case FieldType.confirmPassword:
      case FieldType.fullName:
        return TextInputType.text;
      case FieldType.weight:
      case FieldType.height:
        return TextInputType.number;
      case FieldType.dateOfBirth:
      case FieldType.gender:
      case FieldType.bloodGroup:
      case FieldType.maritalStatus:
      case FieldType.occupation:
      case FieldType.chronicMedicalCondition:
      case FieldType.familyHistoryOfCancer:
        throw ArgumentError(
          'Keyboard type should not be a property for ${widget.fieldType.name}',
        );
    }
  }

  Image? _computePrefixIcon(
    bool focusedValue,
  ) {
    late String? imagePath;

    switch (widget.fieldType) {
      case FieldType.emailAddress:
        imagePath = emailAddressPrefixImagePath;
        break;
      case FieldType.password:
      case FieldType.confirmPassword:
        imagePath = passwordPrefixImagePath;
        break;
      case FieldType.fullName:
      case FieldType.dateOfBirth:
      case FieldType.gender:
      case FieldType.bloodGroup:
      case FieldType.maritalStatus:
      case FieldType.occupation:
      case FieldType.weight:
      case FieldType.height:
      case FieldType.chronicMedicalCondition:
      case FieldType.familyHistoryOfCancer:
        imagePath = null;
        break;
    }

    return imagePath != null
        ? Image.asset(
            imagePath,
            color: focusedValue ? primaryColor : null,
            width: veryLargeSpacing,
            height: largeSpacing,
          )
        : null;
  }

  InkWell _computeSuffixIcon(
    bool focusedValue,
    bool obscureTextValue,
  ) =>
      InkWell(
        customBorder: const CircleBorder(),
        child: Image.asset(
          obscureTextValue
              ? showPasswordSuffixImagePath
              : hidePasswordSuffixImagePath,
          color: focusedValue ? primaryColor : null,
          width: veryLargeSpacing,
          height: largeSpacing,
        ),
        onTap: () => _obscureText!.value = !_obscureText!.value,
      );
}
