import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../constants.dart';

class ResetForm extends StatelessWidget {
  const ResetForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Email',
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
    );
  }
}
