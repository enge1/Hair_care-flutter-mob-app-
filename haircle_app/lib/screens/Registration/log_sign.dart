import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:haircle_app/constants.dart';
import 'package:haircle_app/screens/Registration/log.dart';
import 'package:haircle_app/screens/Registration/sign.dart';
import 'package:haircle_app/screens/onBoarding/boardingButton.dart';

class log_sign extends StatelessWidget {
  const log_sign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'images/icons/logo.png',
              height: 300,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          boardingButton(
              text: 'LogIn',
              color: kColor2,
              onTap: () {
                Get.to(() => log(),
                    transition: Transition.rightToLeft,
                    duration: Duration(milliseconds: 500));
              }),
          SizedBox(
            height: 15,
          ),
          boardingButton(
              text: 'SignUp',
              color: buttoncolor,
              onTap: () {
                Get.to(() => sign(),
                    transition: Transition.rightToLeft,
                    duration: Duration(milliseconds: 500));
              }),
        ],
      ),
    );
  }
}
