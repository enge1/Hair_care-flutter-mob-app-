import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../../constants.dart';

class dotsIndicator extends StatelessWidget {
  const dotsIndicator({required this.Index});
  final double? Index;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
          color: Colors.white,
          activeColor: buttoncolor,
          activeSize: Size.square(15),
          size: Size.square(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: buttoncolor))),
      dotsCount: 3,
      position: Index!,
    );
  }
}
