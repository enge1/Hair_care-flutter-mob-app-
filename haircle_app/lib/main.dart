import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';
import 'package:haircle_app/screens/Registration/log.dart';
import 'package:haircle_app/screens/Registration/sign.dart';
import 'package:haircle_app/screens/splash/splashUi.dart';
import 'screens/resetPassword/ResetPassword.dart';
import 'screens/staticPages/Articles.dart';
import 'screens/FeedBack.dart';
import 'screens/HOME.dart';
import 'screens/Nutrition/dry.dart';
import 'screens/Nutrition/oily.dart';
import 'screens/profile/Profile.dart';
import 'screens/Settings.dart';
import 'screens/QA-Test/HairType.dart';
import 'screens/staticPages/badHabit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(Haircle());
}

class Haircle extends StatelessWidget {
  const Haircle({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      title: "Haircle",
      home: Profile(),
      routes: {
        HOME_PAGE.id: (context) => HOME_PAGE(),
        Settings.id: (context) => Settings(),
        Profile.id: (context) => Profile(),
        log.id: (context) => log(),
        sign.id: (context) => sign(),
        HairType.id: (context) => HairType(),
      },
    );
  }
}
