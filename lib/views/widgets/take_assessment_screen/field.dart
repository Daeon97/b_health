// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  const Field({
    required this.fieldController,
    required this.keyboardType,
    this.enable = true,
    this.hint,
    super.key,
  });

  final TextEditingController fieldController;
  final TextInputType keyboardType;
  final bool enable;
  final String? hint;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          top: smallSpacing,
        ),
        child: _child,
      );

  TextFormField get _child => TextFormField(
        enabled: enable,
        controller: fieldController,
        keyboardType: keyboardType,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hint,
          helperStyle: hint != null
              ? TextStyle(
                  fontSize: spacing - tinySpacing,
                  color: assessmentFieldHintColor,
                  fontFamily: inter,
                  fontWeight: FontWeight.w400,
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
      );
}
