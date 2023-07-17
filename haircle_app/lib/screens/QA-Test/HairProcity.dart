import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:haircle_app/screens/QA-Test/QA.dart';
import '../../constants.dart';
import '../onBoarding/boardingButton.dart';
import 'testHairProcity.dart';
import 'testOfHairType.dart';

class HairProcity extends StatefulWidget {
  static String id = "HairType";

  const HairProcity({Key? key}) : super(key: key);

  @override
  State<HairProcity> createState() => _HairProcityState();
}

class _HairProcityState extends State<HairProcity> {
  String? _hairProcity;

  final List<Map<String, dynamic>> _hairTypes = [
    {
      'name': 'High',
      'image': 'images/icons/high.jpeg',
    },
    {
      'name': 'Medium',
      'image': 'images/icons/medium.jpeg',
    },
    {
      'name': 'Low',
      'image': 'images/icons/low.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor,
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'What is your hair procity?',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'if you don\'t know what your hair procity is please click unsure button',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 30),
            child: Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              width: double.infinity,
              height: 600,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  ..._hairTypes.map((hairType) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          _hairProcity = hairType['name'];
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(20),
                          ),
                          color: _hairProcity == hairType['name']
                              ? kColor
                              : Colors.white,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage(
                                  hairType['image'],
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              hairType['name'],
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                  SizedBox(height: 30),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      boardingButton(
                          text: 'Next',
                          color: buttoncolor,
                          onTap: () {
                            if (_hairProcity == null) {
                              showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  title: Text('Please choose an option.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          _hairProcity = 'Ok';
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Text('Ok',
                                          style: TextStyle(color: buttoncolor)),
                                    ),
                                  ],
                                ),
                              );
                            } else {
                              Get.to(() => QA(),
                                  transition: Transition.rightToLeft,
                                  duration: Duration(milliseconds: 500));
                            }
                          }),
                      SizedBox(
                        height: 15,
                      ),
                      boardingButton(
                          text: 'Unsure',
                          color: buttoncolor,
                          onTap: () {
                            Get.to(() => testHairProcity(),
                                transition: Transition.rightToLeft,
                                duration: Duration(milliseconds: 500));
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
