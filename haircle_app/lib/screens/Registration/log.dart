import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haircle_app/screens/resetPassword/Forgot.dart';
import 'package:haircle_app/screens/Registration/sign.dart';
import 'package:haircle_app/screens/onBoarding/boardingButton.dart';
import '../../constants.dart';
import '../HOME.dart';

class log extends StatefulWidget {
  static String id = 'log';
  const log({super.key});

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  final GlobalKey<FormState> _globalKey2 = GlobalKey<FormState>();
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Center(
            child: Form(
              key: _globalKey2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello Again!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Welcome Back, you\'ve been missed!',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                      controller: username,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Username',
                        hintStyle: TextStyle(
                          color: Colors.black54,
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black54,
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
                        if (Value!.isEmpty) {
                          return 'Please Enter Your Username';
                        }
                      }),
                  //مسافه بردو
                  SizedBox(height: 30),
                  //تيكست فيلد مره تانى وعاملين فيها هينت و ايكون انهم ثابتين
                  TextFormField(
                      controller: password,
                      obscureText: obscure,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Password',
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
                        if (Value!.isEmpty) {
                          return 'Please Enter Your Password';
                        }
                      }),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          // لما ادوس عليه بينافيجيت لصفحة تانيه
                          onTap: () {
                            Get.to(() => Forgot(),
                                transition: Transition.rightToLeft,
                                duration: Duration(milliseconds: 500));
                          },
                          child: Text('Forgetting password ?',
                              style: TextStyle(
                                  color: kColor2,
                                  fontSize: 18,
                                  decoration: TextDecoration.underline))),
                      SizedBox(
                        width: 15,
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  boardingButton(
                    text: 'LogIn',
                    color: buttoncolor,
                    onTap: () {
                      if (_globalKey2.currentState!.validate()) {
                        Navigator.pushNamed(context, HOME_PAGE.id);
                        password.clear();
                        username.clear();
                      }
                    },
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?',
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                      // دى بستخدمها عشان اخلى اقدر ادوس على تيكست
                      GestureDetector(
                          // لما ادوس عليه بينافيجيت لصفحة تانيه
                          onTap: () {
                            Get.to(() => sign(),
                                transition: Transition.rightToLeft,
                                duration: Duration(milliseconds: 500));
                          },
                          child: Text(' Register now',
                              style: TextStyle(color: kColor2, fontSize: 18))),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
