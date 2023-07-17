import 'package:flutter/material.dart';
import 'package:haircle_app/constants.dart';

class Profile extends StatelessWidget {
  static String id = "Profile";
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
            child: Text(
          'Profile',
          style: TextStyle(color: Colors.black45, fontSize: 20),
        )),
      ),
      body: SingleChildScrollView(
        child: Container(),
      ),
    );
  }
}
