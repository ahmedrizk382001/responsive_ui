import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';

class CustomFilledIconButton extends StatelessWidget {
  const CustomFilledIconButton(
      {super.key, required this.buttonIcon, required this.onTap});

  final IconData buttonIcon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.sizeOf(context).width * 0.01,
              horizontal: MediaQuery.sizeOf(context).width * 0.015),
          decoration: BoxDecoration(
            color: AppColorsStyle.mainColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 2, color: AppColorsStyle.mainColor),
          ),
          child: Icon(
            buttonIcon,
            color: Colors.black,
            size: 22,
          ),
        ),
      ),
    );
  }
}

class MobileCustomButton extends StatelessWidget {
  const MobileCustomButton({super.key, required this.buttonTitle});

  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.sizeOf(context).width * 0.04,
              horizontal: MediaQuery.sizeOf(context).width * 0.08),
          decoration: BoxDecoration(
            color: AppColorsStyle.mainColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 2, color: AppColorsStyle.mainColor),
          ),
          child: Text(
            buttonTitle,
            style: AppTextStyles.styleInterBold24(context)
                .copyWith(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class MobileCustomOutlinedButton extends StatelessWidget {
  const MobileCustomOutlinedButton({super.key, required this.buttonTitle});

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
              vertical: MediaQuery.sizeOf(context).width * 0.04,
              horizontal: MediaQuery.sizeOf(context).width * 0.08),
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 2, color: AppColorsStyle.mainColor)),
          child: Text(
            buttonTitle,
            style: AppTextStyles.styleInterBold24(context)
                .copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
