import 'package:community_app/src/config/constant.dart';
import 'package:flutter/material.dart';

const textinputDecoration = InputDecoration(
    labelStyle: TextStyle(
      color: Color.fromARGB(0, 170, 140, 140),
    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xF0F0F0), width: 2)));

class AppTextStyle {
  static const h1 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 30,
    color: Colors.black,
  );
  static const h2 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: kPrimaryColor,
  );
  static const h3 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: kPrimaryColor,
  );
}
