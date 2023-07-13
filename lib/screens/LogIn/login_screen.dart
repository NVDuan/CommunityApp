import 'package:community_app/screens/SignUp/components/body.dart';
import 'package:flutter/material.dart';
import '../../src/config/constant.dart';
import '../components/appbar_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0.0,
        backgroundColor: kLightColor,
        centerTitle: true,
        title: AppBarHeader(
          ic: Icon(
            Icons.cancel_outlined,
            color: kGreycolor,
          ),
          textLeft: 'Hello bà già',
          textmid: 'Sign Up',
          textright: TextButton(onPressed: null, child: Text('')),
          isVisiable: false,
          isCheckedIcon: true,
        ),
      ),
      body: Body(),
    );
  }
}
