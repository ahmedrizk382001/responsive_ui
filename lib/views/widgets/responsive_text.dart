import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/constants.dart';

class ResponsiveText {
  static double getResponsiveText(BuildContext context,
      {required double fontSize}) {
    double currentWidth = MediaQuery.sizeOf(context).width;
    double scaleFactor = getScaleFactor(context, currentWidth: currentWidth);
    double responsiveFontSize = fontSize * scaleFactor;
    double minFontSize = fontSize * 0.8;
    double maxFontSize = fontSize * 1.4;

    //print("$responsiveFontSize, $minFontSize, $maxFontSize");
    return responsiveFontSize.clamp(minFontSize, maxFontSize);
  }

  static double getScaleFactor(BuildContext context, {required currentWidth}) {
    if (currentWidth < mobileBreakPoint) {
      return currentWidth / 700;
    } else {
      return currentWidth / 1500;
    }
  }
}
