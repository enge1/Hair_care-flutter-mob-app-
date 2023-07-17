import 'package:flutter/material.dart';
import 'package:haircle_app/screens/onBoarding/onBoardingItem.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({required this.pageController});
  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        onBoardingItem(
          image: 'images/icons/lose.jpg',
          title: 'reem',
          subtitle: 'mohamed hussien mohamed ',
        ),
        onBoardingItem(
          image: 'images/icons/lose.jpg',
          title: 'reem',
          subtitle: 'mohamed hussien mohamed ',
        ),
        onBoardingItem(
          image: 'images/icons/lose.jpg',
          title: 'reem',
          subtitle: 'mohamed hussien mohamed ',
        ),
      ],
    );
  }
}
