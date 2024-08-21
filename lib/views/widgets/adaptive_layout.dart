import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/constants.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.desktopAndTabletLayout});

  final WidgetBuilder mobileLayout, desktopAndTabletLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        log(constraints.maxWidth.toString());
        if (constraints.maxWidth < mobileBreakPoint) {
          return mobileLayout(context);
        } else {
          return desktopAndTabletLayout(context);
        }
      },
    );
  }
}
