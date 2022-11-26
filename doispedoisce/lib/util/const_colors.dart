import 'package:flutter/material.dart';

class ConstColors {
  static const int ccBackgroundHex = 0x00DFDFEB;
  static int ccActionAreaHex = 0x00202024;
  static int ccHintTextHex = 0x008D8D99;
  static int ccFinancialTaskHex = 0x0068C809;
  static int ccPersonalTaskHex = 0x00AD09C8;
  static int ccFacebookHex = 0xFF3b5998;
  static int ccGmailHex = 0xFFBB001B;
  static int ccTwitterHex = 0xFF00acee;

  static const Color ccBackground = Color(0x00DFDFEB);
  static const Color ccActionArea = Color(0x00202024);
  static const Color ccHintText = Color(0x008D8D99);
  static const Color ccFinancialTask = Color(0x0068C809);
  static const Color ccPersonalTask = Color(0x00AD09C8);
  static const Color ccFacebook = Color(0xFF3b5998);
  static const Color ccGmail = Color(0xFFBB001B);
  static const Color ccTwitter = Color(0xFF00acee);

  static MaterialColor get ccBackgroundM =>
      getCustomMaterialColor(ccBackgroundHex);
  static MaterialColor get ccActionAreaM =>
      getCustomMaterialColor(ccActionAreaHex);
  static MaterialColor get ccHintTextM => getCustomMaterialColor(ccHintTextHex);
  static MaterialColor get ccFinancialTaskM =>
      getCustomMaterialColor(ccFinancialTaskHex);
  static MaterialColor get ccPersonalTaskM =>
      getCustomMaterialColor(ccPersonalTaskHex);
  static MaterialColor get ccFacebookM => getCustomMaterialColor(ccFacebookHex);
  static MaterialColor get ccGmailM => getCustomMaterialColor(ccGmailHex);
  static MaterialColor get ccTwitterM => getCustomMaterialColor(ccTwitterHex);

  static MaterialColor getCustomMaterialColor(int colorHex) {
    Map<int, Color> color = {
      50: Color(colorHex).withOpacity(.05),
      100: Color(colorHex).withOpacity(.1),
      200: Color(colorHex).withOpacity(.2),
      300: Color(colorHex).withOpacity(.3),
      400: Color(colorHex).withOpacity(.4),
      500: Color(colorHex).withOpacity(.5),
      600: Color(colorHex).withOpacity(.6),
      700: Color(colorHex).withOpacity(.7),
      800: Color(colorHex).withOpacity(.8),
      900: Color(colorHex).withOpacity(.9),
    };

    return MaterialColor(colorHex, color);
  }
}
