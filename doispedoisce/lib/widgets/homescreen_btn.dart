import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/const_colors.dart';

class HomeScreenBtn extends StatelessWidget {
  const HomeScreenBtn(
      {super.key, required this.btnText, required this.onPressed});
  final String btnText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: onPressed,
        child: Material(
          color: ConstColors.ccActionAreaM.shade900,
          child: Container(
            height: 80,
            width: 104,
            child: Center(
              child: Text(
                btnText,
                style: GoogleFonts.lato(
                    color: ConstColors.ccBackgroundM.shade900,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
