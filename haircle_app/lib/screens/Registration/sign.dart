import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haircle_app/screens/HOME.dart';
import 'package:haircle_app/screens/onBoarding/boardingButton.dart';
import '../../constants.dart';
import '../../controller/sign_up_controller.dart';
import 'package:image_picker/image_picker.dart';

import '../QA-Test/HairType.dart';

enum GenderType { Male, Female }

class sign extends StatefulWidget {
  static String id = 'sign';

  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();
  Sign_up_controller sign_up_controller = Get.put(Sign_up_controller());

  @override
  State<sign> createState() => _signState();
}

class _signState extends State<sign> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  TextEditingController email = TextEditingController();

  bool obscure = true;
  bool obscure2 = true;
  GenderType? _genderType;
  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();
  Sign_up_controller sign_up_controller = Get.put(Sign_up_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: ListView(
            children: [
              Form(
                key: _globalKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome To Haircle",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Create Your Account Now To Start',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: TextFormField(
                                controller: username,
                                keyboardType: TextInputType.name,
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
                                      borderSide: BorderSide(
                                          color: buttoncolor, width: 2),
                                      borderRadius: BorderRadius.circular(20)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: buttoncolor, width: 2),
                                      borderRadius: BorderRadius.circular(20)),
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedErrorBorder: OutlineInputBorder(),
                                  border: OutlineInputBorder(),
                                ),
                                validator: (Value) {
                                  if (Value!.isEmpty) {
                                    return 'Please Enter Your Username';
                                  } else {
                                    return null;
                                  }
                                }),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Stack(
                            children: [
                              Obx(
                                () => CircleAvatar(
                                  child: Center(
                                    child: InkWell(
                                      child: Icon(
                                        Icons.camera_alt,
                                        color: Colors.white38,
                                        size: 40,
                                      ),
                                      onTap: () {
                                        print("cemera clicked");
                                        showModalBottomSheet(
                                            context: context,
                                            builder: (context) => bottomsheet(
                                                  context,
                                                ));
                                      },
                                    ),
                                  ),
                                  backgroundImage:
                                      sign_up_controller
                                                  .isProficPicPathSet.value ==
                                              true
                                          ? FileImage(File(sign_up_controller
                                              .profilePicPath
                                              .value)) as ImageProvider
                                          : AssetImage(
                                              "images/icons/circle.png"),
                                  backgroundColor: buttoncolor,
                                  radius: 70,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        controller: email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Enter Your Email',
                          hintStyle: TextStyle(
                            color: Colors.black54,
                          ),
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Colors.black54,
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
                          bool emailValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(Value!);
                          if (Value.isEmpty) {
                            return 'Please Enter Your Email';
                          } else if (!emailValid) {
                            return "Please Enter A Correct Email";
                          }
                        }),
                    //مسافه بردو
                    SizedBox(height: 25),
                    TextFormField(
                        keyboardType: TextInputType.datetime,
                        readOnly: true,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintText: 'Enter Your Bithdate',
                          hintStyle: TextStyle(
                            color: Colors.black54,
                          ),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.calendar_today,
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
                        )),
                    //تيكست فيلد مره تانى وعاملين فيها هينت و ايكون انهم ثابتين
                    SizedBox(height: 25),

                    Padding(
                      padding: const EdgeInsets.only(right: 15, left: 15),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: buttoncolor, width: 2),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: RadioListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  value: GenderType.Male,
                                  groupValue: _genderType,
                                  dense: true,
                                  title: Text(GenderType.Male.name),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  onChanged: (val) {
                                    setState(() {
                                      _genderType = val;
                                    });
                                  }),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: buttoncolor, width: 2),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: RadioListTile(
                                  contentPadding: EdgeInsets.all(0),
                                  value: GenderType.Female,
                                  groupValue: _genderType,
                                  dense: true,
                                  title: Text(GenderType.Female.name),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  onChanged: (val) {
                                    setState(() {
                                      _genderType = val;
                                    });
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),

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
                                  BorderSide(color: buttoncolor, width: 2),
                              borderRadius: BorderRadius.circular(20)),
                          filled: true,
                          fillColor: Colors.white,
                          focusedErrorBorder: OutlineInputBorder(),
                          border: OutlineInputBorder(),
                        ),
                        validator: (Value) {
                          if (Value!.isEmpty) {
                            return 'Please Enter Your Password';
                          } else if (password.text.length < 6) {
                            return 'Your Password Length Must Be At Least 6 Characters';
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(height: 25),
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
                              obscure2
                                  ? Icons.visibility_off
                                  : Icons.visibility,
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
                            return 'Please Confirm Your Password ';
                          } else if (!(confirmpassword == password)) {
                            return 'Please Enter A Correct Password';
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(height: 30),
                    boardingButton(
                      text: 'SignIn',
                      color: buttoncolor,
                      onTap: () {
                        if (_globalKey.currentState!.validate()) {
                          email.clear();
                          password.clear();
                          confirmpassword.clear();
                          username.clear();

                          Get.to(() => HairType(),
                              transition: Transition.rightToLeft,
                              duration: Duration(milliseconds: 500));
                        } else {
                          showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                    title: Text('Please Enter Your Data.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: Text('OK'),
                                      ),
                                    ],
                                  ));
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomsheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        children: [
          const Text(
            "Choose Your Profile Photo",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.image,
                      color: buttoncolor,
                      size: 40,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Gallery",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                onTap: () {
                  takePhoto(ImageSource.gallery);
                },
              ),
              const SizedBox(
                width: 80,
              ),
              InkWell(
                child: Column(
                  children: const [
                    Icon(
                      Icons.camera_alt,
                      color: buttoncolor,
                      size: 40,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Camera",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                onTap: () {
                  takePhoto(ImageSource.camera);
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedImage =
        await imagePicker.pickImage(source: source, imageQuality: 100);
    pickedFile = File(pickedImage!.path);
    sign_up_controller.setProfileImagePath(pickedFile!.path);
    Get.back();
    // print(pickedFile);
  }
}
