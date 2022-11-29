import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/const_colors.dart';

class DayShowItem extends StatelessWidget {
  const DayShowItem(
      {super.key, required this.dayName, required this.isScheduled});
  final String dayName;
  final bool isScheduled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2, right: 2, bottom: 4, top: 8),
      child: Material(
        color: isScheduled
            ? ConstColors.ccBackgroundM.shade500
            : ConstColors.ccActionAreaM.shade900,
        borderRadius: BorderRadius.circular(5),
        child: Center(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
          child: Text(
            dayName,
            style: GoogleFonts.lato(
                fontSize: 8,
                color: isScheduled
                    ? ConstColors.ccActionAreaM.shade900
                    : ConstColors.ccBackgroundM.shade900,
                fontWeight: FontWeight.bold),
          ),
        )),
      ),
    );
  }
}
