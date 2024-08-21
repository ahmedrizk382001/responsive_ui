import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/responsive_text.dart';

/*
w100 → const FontWeight
Thin, the least thick.
w200 → const FontWeight
Extra-light.
w300 → const FontWeight
Light.
w400 → const FontWeight
Normal / regular / plain.
w500 → const FontWeight
Medium.
w600 → const FontWeight
Semi-bold.
w700 → const FontWeight
Bold.
w800 → const FontWeight
Extra-bold.
w900 → const FontWeight
Black, the most thick.
*/

abstract class AppTextStyles {
  static TextStyle styleRobotoBold18(BuildContext context) {
    return TextStyle(
      fontFamily: "Roboto",
      fontSize: ResponsiveText.getResponsiveText(context, fontSize: 18),
      fontWeight: FontWeight.w700,
      color: Colors.white,
    );
  }

  static TextStyle styleInterRegular18(BuildContext context) {
    return TextStyle(
      fontFamily: "Inter",
      fontSize: ResponsiveText.getResponsiveText(context, fontSize: 18),
      fontWeight: FontWeight.w400,
      color: const Color(0xFF5D5A5A),
    );
  }

  static TextStyle styleInterRegular39(BuildContext context) {
    return TextStyle(
      fontFamily: "Inter",
      fontSize: ResponsiveText.getResponsiveText(context, fontSize: 39),
      fontWeight: FontWeight.w400,
      color: Colors.black,
    );
  }

  static TextStyle styleInterRegular12(BuildContext context) {
    return TextStyle(
      fontFamily: "Inter",
      fontSize: ResponsiveText.getResponsiveText(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      color: const Color(0xff9D9C9C),
    );
  }

  static TextStyle styleInterMedium22(BuildContext context) {
    return TextStyle(
      fontFamily: "Inter",
      fontSize: ResponsiveText.getResponsiveText(context, fontSize: 22),
      fontWeight: FontWeight.w500,
      color: Colors.white,
    );
  }

  static TextStyle styleInterSemiBold18(BuildContext context) {
    return TextStyle(
      fontFamily: "Inter",
      fontSize: ResponsiveText.getResponsiveText(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }

  static TextStyle styleInterBold24(BuildContext context) {
    return TextStyle(
      fontFamily: "Inter",
      fontSize: ResponsiveText.getResponsiveText(context, fontSize: 24),
      fontWeight: FontWeight.w700,
      color: Colors.black,
    );
  }

  static TextStyle styleInterBold36(BuildContext context) {
    return TextStyle(
      fontFamily: "Inter",
      fontSize: ResponsiveText.getResponsiveText(context, fontSize: 36),
      fontWeight: FontWeight.w700,
      color: Colors.white,
    );
  }

  static TextStyle styleInterBold16(BuildContext context) {
    return TextStyle(
      fontFamily: "Inter",
      fontSize: ResponsiveText.getResponsiveText(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      color: Colors.white,
    );
  }

  static TextStyle styleInterBold48(BuildContext context) {
    return TextStyle(
      fontFamily: "Inter",
      fontSize: ResponsiveText.getResponsiveText(context, fontSize: 48),
      fontWeight: FontWeight.w700,
      color: Colors.black,
    );
  }

  static TextStyle styleInterBold54(BuildContext context) {
    return TextStyle(
      fontFamily: "Inter",
      fontSize: ResponsiveText.getResponsiveText(context, fontSize: 54),
      fontWeight: FontWeight.w700,
      color: Colors.white,
    );
  }

  static TextStyle stylePoppinsRegular45(BuildContext context) {
    return TextStyle(
      fontFamily: "Poppins",
      fontSize: ResponsiveText.getResponsiveText(context, fontSize: 45),
      fontWeight: FontWeight.w400,
      color: Colors.white,
    );
  }

  static TextStyle stylePoppinsMedium37(BuildContext context) {
    return TextStyle(
      fontFamily: "Poppins",
      fontSize: ResponsiveText.getResponsiveText(context, fontSize: 37),
      fontWeight: FontWeight.w500,
      color: Colors.white,
    );
  }

  static TextStyle stylePoppinsRegular20(BuildContext context) {
    return TextStyle(
      fontFamily: "Poppins",
      fontSize: ResponsiveText.getResponsiveText(context, fontSize: 20),
      fontWeight: FontWeight.w400,
      color: Colors.white,
    );
  }
}

abstract class AppColorsStyle {
  static const Color mainColor = Color(0xffB9F2A1);
}
