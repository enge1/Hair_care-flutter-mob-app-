import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haircle_app/screens/resetPassword/EmailVerification.dart';
import 'package:haircle_app/screens/onBoarding/boardingButton.dart';
import '../../constants.dart';

class Forgot extends StatefulWidget {
  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  TextEditingController email = TextEditingController();
  EmailOTP myauth = EmailOTP();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor,
      body: SafeArea(
          child: ListView(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.only(right: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 250,
                  ),
                  Text(
                    'Reset Your Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Please enter your Email address to verify your account',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      hintText: 'Please write your Email ',
                      hintStyle: TextStyle(
                        color: Colors.black54,
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black54,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: buttoncolor, width: 2),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(20)),
                      filled: true,
                      fillColor: Colors.white,
                      focusedErrorBorder: OutlineInputBorder(),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  boardingButton(
                    text: 'Send',
                    color: buttoncolor,
                    onTap: () async {
                      myauth.setConfig(
                        // عشان يرسل الرساله بهذا الاسم
                        appEmail: '',
                        appName: 'Haircle',
                        userEmail: email.text,
                        otpLength: 4,
                        otpType: OTPType.digitsOnly,
                      );
                      if (await myauth.sendOTP() == true) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('OTP has been sent')));
                        Get.to(() => EmailVerification(myauth: myauth),
                            transition: Transition.rightToLeft,
                            duration: Duration(milliseconds: 500));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Oops, OTP send failed')));
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
