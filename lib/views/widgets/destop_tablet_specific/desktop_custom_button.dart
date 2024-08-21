import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({super.key, required this.buttonTitle});

  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.sizeOf(context).width * 0.01,
              horizontal: MediaQuery.sizeOf(context).width * 0.015),
          decoration: BoxDecoration(
            color: AppColorsStyle.mainColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 2, color: AppColorsStyle.mainColor),
          ),
          child: Text(
            buttonTitle,
            style: AppTextStyles.styleInterSemiBold18(context),
          ),
        ),
      ),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({super.key, required this.buttonTitle});

  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.sizeOf(context).width * 0.01,
              horizontal: MediaQuery.sizeOf(context).width * 0.015),
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 2, color: AppColorsStyle.mainColor)),
          child: Text(
            buttonTitle,
            style: AppTextStyles.styleInterSemiBold18(context).copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
