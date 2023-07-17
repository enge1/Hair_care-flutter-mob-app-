import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haircle_app/constants.dart';
import 'package:haircle_app/screens/HOME.dart';
import 'package:haircle_app/screens/onBoarding/boardingButton.dart';

class QA extends StatefulWidget {
  const QA({super.key});

  @override
  State<QA> createState() => _QAState();
}

int indexNumber = 0;
List questions = ['now?', 'reem?', 'now?', 'reem?', 'now?', 'reem?'];
List answers = [];

class _QAState extends State<QA> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    questions[indexNumber],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              )),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: boardingButton(
                    text: 'Yes',
                    color: buttoncolor,
                    onTap: () {
                      setState(() {
                        if (indexNumber < questions.length - 1) {
                          indexNumber = indexNumber + 1;
                          print('yes');
                        } else {
                          Get.to(() => HOME_PAGE(),
                              transition: Transition.rightToLeft,
                              duration: Duration(milliseconds: 500));
                        }
                      });
                    },
                  ))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: boardingButton(
                    text: 'No',
                    color: buttoncolor,
                    onTap: () {
                      setState(() {
                        if (indexNumber < questions.length - 1) {
                          indexNumber = indexNumber + 1;
                          print('no');
                        } else {
                          Get.to(() => HOME_PAGE(),
                              transition: Transition.rightToLeft,
                              duration: Duration(milliseconds: 500));
                        }
                      });
                    },
                  )))
        ],
      ),
    );
  }
}
