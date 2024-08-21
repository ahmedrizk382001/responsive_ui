import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';

// ignore: must_be_immutable
class BackgroundContainer extends StatelessWidget {
  BackgroundContainer({super.key, required this.child, this.color});

  final Widget child;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.sizeOf(context).width * 0.05,
          horizontal: MediaQuery.sizeOf(context).width * 0.05),
      decoration: BoxDecoration(
        color: color ?? AppColorsStyle.mainColor.withOpacity(0.35),
      ),
      child: child,
    );
  }
}
