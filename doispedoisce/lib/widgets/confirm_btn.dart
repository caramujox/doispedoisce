import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/const_colors.dart';

class ConfirmBtn extends StatelessWidget {
  const ConfirmBtn({super.key, required this.btnText, required this.onPressed});
  final String btnText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40, right: 40),
      child: InkWell(
        onTap: () {},
        child: Material(
          color: ConstColors.ccActionAreaM.shade900,
          borderRadius: BorderRadius.circular(5),
          child: Center(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: Text(
              btnText,
              style: GoogleFonts.lato(
                  color: ConstColors.ccBackgroundM.shade900,
                  fontWeight: FontWeight.bold),
            ),
          )),
        ),
      ),
    );
  }
}
