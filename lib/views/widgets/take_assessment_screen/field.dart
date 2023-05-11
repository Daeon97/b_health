// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  const Field({
    required this.fieldController,
    super.key,
  });

  final TextEditingController fieldController;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          top: smallSpacing,
        ),
        child: TextFormField(
          controller: fieldController,
          keyboardType: TextInputType.text,
          autovalidateMode: AutovalidateMode.onUserInteraction,
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
}
