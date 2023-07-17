import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class onBoardingItem extends StatelessWidget {
  const onBoardingItem({super.key, this.title, this.subtitle, this.image});
  final String? title;
  final String? subtitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Image.asset(image!)),
        Text(
          title!,
          style: TextStyle(
              fontSize: 24, color: Colors.black87, fontWeight: FontWeight.w600),
          textAlign: TextAlign.left,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          subtitle!,
          style: TextStyle(
              fontSize: 24, color: Colors.black54, fontWeight: FontWeight.w300),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
