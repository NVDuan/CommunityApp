import 'package:community_app/src/config/constant.dart';
import 'package:flutter/material.dart';

import 'text_filed_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;
  final bool textShow;
  const RoundedPasswordField({
    super.key,
    required this.onChanged,
    required this.hintText,
    required this.textShow,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      style: TextStyle(
          fontSize: 15, fontWeight: FontWeight.w400, color: kBlackColor),
      obscureText: true,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        suffixText: textShow ? 'Show' : '',
        suffixStyle: TextStyle(color: kPrimaryColor),
        border: InputBorder.none,
      ),
    ));
  }
}
