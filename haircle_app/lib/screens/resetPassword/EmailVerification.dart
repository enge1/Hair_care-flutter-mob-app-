import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:haircle_app/constants.dart';
import 'package:haircle_app/screens/resetPassword/ResetPassword.dart';
import '../onBoarding/boardingButton.dart';
import 'Otp.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key, required this.myauth});
  final EmailOTP myauth;

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  TextEditingController otp1 = TextEditingController();
  TextEditingController otp2 = TextEditingController();
  TextEditingController otp3 = TextEditingController();
  TextEditingController otp4 = TextEditingController();
  String otpController = '1234';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor,
      body: SafeArea(
          child: ListView(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.only(right: 25, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 250,
                  ),
                  Text(
                    'Email Verification',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Enter OTP Code Here',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Otp(otpController: otp1),
                        Otp(otpController: otp2),
                        Otp(otpController: otp3),
                        Otp(otpController: otp4),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  boardingButton(
                    text: 'Verify',
                    color: buttoncolor,
                    onTap: () async {
                      if (await widget.myauth.verifyOTP(
                              otp: otp1.text +
                                  otp2.text +
                                  otp3.text +
                                  otp4.text) ==
                          true) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('OTP is verified')));
                        Get.to(() => ResetPassword(),
                            transition: Transition.rightToLeft,
                            duration: Duration(milliseconds: 500));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Invalid OTP')));
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
