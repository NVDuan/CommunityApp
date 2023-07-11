import 'package:community_app/constant.dart';
import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    final bool _isChecked = false;
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Column(
        children: [
          Container(
            width: size.width * 0.9,
            height: size.height * 0.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.cancel_rounded, color: Colors.grey.shade300,),
                Text('Sign Up',style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: kBlackColor)),
                Text('Login', style: TextStyle(color: kPrimaryColor),),
            ]),
          ),
          RoundedInputField(
            hintText: 'Your email',
            onChanged: (value) {} ,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(value: _isChecked, onChanged: (value){
                setState(() {
                  _isChecked ? Icon(Icons.cancel_presentation) : Icon(Icons.pause_presentation);
                });
              })
            ],
          )
        ],
      ),
    );
  }
}





