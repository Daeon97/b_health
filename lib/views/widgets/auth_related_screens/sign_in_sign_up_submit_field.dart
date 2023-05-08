// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:flutter/material.dart';

enum FieldType {
  emailAddress,
  password,
  confirmPassword,
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
  State<SignInSignUpSubmitField> createState() => _SignInSignUpSubmitFieldState();
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
    widget.fieldController.dispose();
    _obscureText?.dispose();
    _focusNode
      ..removeListener(_onFocusChanged)
      ..dispose();

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
          TextFormField(
            controller: widget.fieldController,
            focusNode: _focusNode,
            keyboardType: _keyboardType,
            obscureText: obscureTextValue ?? false,
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
            // validator: _validator,
            // onFieldSubmitted: _onFieldSubmitted,
          ),
        ],
      );

  void _computeObscurableText() {
    switch (widget.fieldType) {
      case FieldType.emailAddress:
        _obscureText = null;
        break;
      case FieldType.password:
      case FieldType.confirmPassword:
        _obscureText = ValueNotifier<bool>(
          true,
        );
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
    }
  }

  TextInputType get _keyboardType {
    switch (widget.fieldType) {
      case FieldType.emailAddress:
        return TextInputType.emailAddress;
      case FieldType.password:
      case FieldType.confirmPassword:
        return TextInputType.text;
    }
  }

  Image _computePrefixIcon(
    bool focusedValue,
  ) {
    late String imagePath;

    switch (widget.fieldType) {
      case FieldType.emailAddress:
        imagePath = emailAddressPrefixImagePath;
        break;
      case FieldType.password:
      case FieldType.confirmPassword:
        imagePath = passwordPrefixImagePath;
        break;
    }

    return Image.asset(
      imagePath,
      color: focusedValue ? primaryColor : null,
      width: veryLargeSpacing,
      height: largeSpacing,
    );
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
