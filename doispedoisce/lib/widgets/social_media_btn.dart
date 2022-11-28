import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/const_colors.dart';

class SocialMediaBtn extends StatelessWidget {
  const SocialMediaBtn(
      {super.key,
      required this.btnText,
      required this.onPressed,
      required this.mainColor,
      required this.icon});
  final String btnText;
  final VoidCallback onPressed;
  final Color mainColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: InkWell(
        onTap: () {},
        child: Material(
          color: mainColor,
          borderRadius: BorderRadius.circular(5),
          child: Center(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: Wrap(
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 14,
                  color: ConstColors.ccBackgroundM.shade900,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  btnText,
                  style: GoogleFonts.lato(
                      fontSize: 8,
                      color: ConstColors.ccBackgroundM.shade900,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
