import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/const_colors.dart';

class AppTextInput extends StatelessWidget {
  const AppTextInput(
      {super.key,
      required this.hintText,
      required this.isHidden,
      required this.textInputType,
      required this.controller});

  final String hintText;
  final bool isHidden;
  final TextInputType textInputType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40, right: 40),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: ConstColors.ccActionAreaM.shade900,
        ),
        child: TextField(
          controller: controller,
          keyboardType: textInputType,
          obscureText: isHidden,
          autofocus: false,
          style: GoogleFonts.lato(color: Colors.white),
          decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelText: hintText,
              labelStyle:
                  GoogleFonts.lato(color: ConstColors.ccHintTextM.shade600),
              border: OutlineInputBorder()),
        ),
      ),
    );
  }
}
