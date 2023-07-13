import 'package:flutter/material.dart';

import '../../src/config/constant.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const RoundedButton({
    super.key,
    required this.press,
    this.color = Colors.white,
    this.textColor = kPrimaryColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 22, horizontal: 40),
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onPressed: () => press(),
          child: Text(
            text,
            style: TextStyle(color: color),
          )),
    );
  }
}
