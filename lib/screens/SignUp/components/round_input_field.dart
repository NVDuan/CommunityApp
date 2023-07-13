import 'package:flutter/material.dart';

import '../../../src/config/constant.dart';
import 'text_filed_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    super.key,
    required this.hintText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: Container(
        child: TextField(
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: kBlackColor),
          onChanged: onChanged,
          decoration:
              InputDecoration(hintText: hintText, border: InputBorder.none),
        ),
      ),
    );
  }
}
