import 'package:community_app/src/config/app_text.dart';
import 'package:community_app/src/config/constant.dart';
import 'package:flutter/material.dart';
import '../LogIn/login_screen.dart';
import '../components/appbar_header.dart';
import 'components/body.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
          textright: TextButton(
              onPressed: () {
                // pushReplacement
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
                print('ok');
              },
              child: Text(
                'Singin',
                style: AppTextStyle.h2,
              )),
          isVisiable: true,
          isCheckedIcon: false,
        ),
      ),
      body: Body(),
    );
  }
}
