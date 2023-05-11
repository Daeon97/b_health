// ignore_for_file: public_member_api_docs

import 'package:b_health/resources/colors.dart';
import 'package:b_health/resources/numbers.dart';
import 'package:b_health/resources/strings.dart';
import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  const Options({
    required this.options,
    required this.optionsGroupValue,
    super.key,
  });

  final List<String> options;
  final String optionsGroupValue;

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List<Widget>.generate(
          widget.options.length,
          (index) => Row(
            children: [
              Radio<String>(
                value: widget.options[index],
                groupValue: widget.optionsGroupValue,
                onChanged: (value) {},
              ),
              Text(
                widget.options[index],
                style: const TextStyle(
                  fontSize: spacing - tinySpacing,
                  color: primaryColor,
                  fontFamily: inter,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      );
}
