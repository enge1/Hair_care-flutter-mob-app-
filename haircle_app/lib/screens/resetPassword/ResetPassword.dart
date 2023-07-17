import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:haircle_app/screens/HOME.dart';
import '../../constants.dart';
import '../onBoarding/boardingButton.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final GlobalKey<FormState> _globalKeyReset = GlobalKey<FormState>();
  bool obscure = true;
  bool obscure2 = true;
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
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
                      'your new password must be different from previously used password',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                      controller: password,
                      obscureText: obscure,
                      decoration: InputDecoration(
                        hintText: 'Enter Your new Password',
                        hintStyle: TextStyle(
                          color: Colors.black54,
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black54,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscure = !obscure;
                            });
                          },
                          icon: Icon(
                            obscure ? Icons.visibility_off : Icons.visibility,
                            color: Colors.black54,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: buttoncolor, width: 2),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(20)),
                        filled: true,
                        fillColor: Colors.white,
                        focusedErrorBorder: OutlineInputBorder(),
                        border: OutlineInputBorder(),
                      ),
                      validator: (Value) {
                        if (Value!.isEmpty ||
                            !RegExp(r'^[a-z A-z 0-9]+$').hasMatch(Value!)) {
                          return 'Please Enter Your Password';
                        } else {
                          return null;
                        }
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      controller: confirmpassword,
                      obscureText: obscure2,
                      decoration: InputDecoration(
                        hintText: 'Confirm Your Password',
                        hintStyle: TextStyle(
                          color: Colors.black54,
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black54,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscure2 = !obscure2;
                            });
                          },
                          icon: Icon(
                            obscure2 ? Icons.visibility_off : Icons.visibility,
                            color: Colors.black54,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: buttoncolor, width: 2),
                            borderRadius: BorderRadius.circular(20)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: buttoncolor, width: 2),
                            borderRadius: BorderRadius.circular(20)),
                        filled: true,
                        fillColor: Colors.white,
                        focusedErrorBorder: OutlineInputBorder(),
                        border: OutlineInputBorder(),
                      ),
                      validator: (Value) {
                        if (Value!.isEmpty) {
                          return 'Please Confirm Your Password';
                        } else if (!(confirmpassword == password)) {
                          return 'Please Enter A Correct Password';
                        } else {
                          return null;
                        }
                      }),
                  SizedBox(
                    height: 40,
                  ),
                  boardingButton(
                    text: 'Reset Password',
                    color: buttoncolor,
                    onTap: () {
                      if (_globalKeyReset.currentState!.validate()) {
                        password.clear();
                        confirmpassword.clear();

                        Get.to(() => HOME_PAGE(),
                            transition: Transition.rightToLeft,
                            duration: Duration(milliseconds: 500));
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
