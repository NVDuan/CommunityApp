import 'package:community_app/src/config/constant.dart';
import 'package:flutter/material.dart';
import '../../components/round_button.dart';
import 'round_input_field.dart';
import 'round_password_field.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: kLightColor,
      width: double.infinity,
      height: size.height,
      child: Column(
        children: [
          RoundedInputField(
            hintText: 'Your email',
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            hintText: 'Create to Password',
            textShow: false,
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            hintText: 'Re-Enter the Password',
            textShow: true,
            onChanged: (value) {},
          ),
          Container(
            width: size.width * 0.9,
            height: size.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Checkbox(
                    value: isChecked,
                    activeColor: kPrimaryColor,
                    onChanged: (newCheck) {
                      setState(() {
                        isChecked = newCheck;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: Text(
                    'Until recently, the prevailing view assumed lorem ipsum was born as a nonsense text',
                    style: TextStyle(),
                    softWrap: true,
                  ),
                )
              ],
            ),
          ),
          RoundedButton(
            text: 'Sign Up',
            press: () {},
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Forgot your password ?',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.25,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(
          Icons.cancel_rounded,
          color: Colors.grey.shade300,
        ),
        Text('Sign Up',
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.w600, color: kBlackColor)),
        Text(
          'Login',
          style: TextStyle(color: kPrimaryColor, fontSize: 17),
        ),
      ]),
    );
  }
}
