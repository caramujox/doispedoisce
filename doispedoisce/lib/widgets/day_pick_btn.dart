import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/const_colors.dart';

class DayPickBtn extends StatelessWidget {
  const DayPickBtn({super.key, required this.dayName});
  final String dayName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Material(
          color: ConstColors.ccActionAreaM.shade900,
          borderRadius: BorderRadius.circular(5),
          child: Center(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: Text(
              dayName,
              style: GoogleFonts.lato(
                  fontSize: 8,
                  color: ConstColors.ccBackgroundM.shade900,
                  fontWeight: FontWeight.bold),
            ),
          )),
        ),
      ),
    );
    ;
  }
}
