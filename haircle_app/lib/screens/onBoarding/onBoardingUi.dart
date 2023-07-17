import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:haircle_app/constants.dart';
import 'package:haircle_app/screens/Registration/log.dart';
import 'package:haircle_app/screens/Registration/log_sign.dart';
import 'package:haircle_app/screens/Registration/sign.dart';
import 'package:haircle_app/screens/onBoarding/boardingButton.dart';
import 'package:haircle_app/screens/onBoarding/dotsIndicator.dart';
import 'package:haircle_app/screens/onBoarding/onBoardingPage.dart';

class onBoardingUi extends StatefulWidget {
  const onBoardingUi({super.key});

  @override
  State<onBoardingUi> createState() => _onBoardingUiState();
}

class _onBoardingUiState extends State<onBoardingUi> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          onBoardingPage(
            pageController: pageController,
          ),
          Positioned(
            bottom: 150,
            left: 0,
            right: 0,
            child: dotsIndicator(
                Index: pageController!.hasClients ? pageController?.page : 0),
          ),
          Visibility(
            visible: pageController!.hasClients
                ? (pageController?.page == 2 ? false : true)
                : true,
            child: Positioned(
              top: MediaQuery.of(context).size.height * .1,
              right: 32,
              child: Text(
                'Skip',
                style: TextStyle(
                    color: buttoncolor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
              bottom: 50,
              left: 50,
              right: 50,
              child: boardingButton(
                color: buttoncolor,
                onTap: () {
                  if (pageController!.page! < 2) {
                    pageController?.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  } else {
                    Get.to(() => log_sign(),
                        transition: Transition.rightToLeft,
                        duration: Duration(milliseconds: 500));
                  }
                },
                text: pageController!.hasClients
                    ? (pageController?.page == 2 ? 'Get Started' : 'Next')
                    : 'Next',
              )),
        ],
      ),
    );
  }
}
