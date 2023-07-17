import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:haircle_app/constants.dart';
import 'package:haircle_app/widgets/Nav_Bar.dart';

class HOME_PAGE extends StatefulWidget {
  const HOME_PAGE({super.key});
  static String id = "HOME_PAGE";
  @override
  State<HOME_PAGE> createState() => _HOME_PAGEState();
}

class _HOME_PAGEState extends State<HOME_PAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Nav_Bar(),
    );
  }
}
