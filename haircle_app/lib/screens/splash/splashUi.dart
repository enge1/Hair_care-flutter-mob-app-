import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:haircle_app/constants.dart';
import 'package:haircle_app/screens/onBoarding/onBoardingUi.dart';

class splashUi extends StatefulWidget {
  const splashUi({super.key});

  @override
  State<splashUi> createState() => _splashUiState();
}

class _splashUiState extends State<splashUi> {
  @override
  void initState() {
    goToNextView();
  }

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
            height: 10,
          ),
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(() => onBoardingUi(),
          transition: Transition.rightToLeft,
          duration: Duration(milliseconds: 500));
    });
  }
}
