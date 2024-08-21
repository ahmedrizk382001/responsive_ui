import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';

// ignore: must_be_immutable
class SloganText extends StatelessWidget {
  SloganText({super.key, this.crossAxisAlignment, this.mainAxisAlignment});

  CrossAxisAlignment? crossAxisAlignment;
  MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (MediaQuery.sizeOf(context).width <= 1680 &&
            MediaQuery.sizeOf(context).width >= 900) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Trusted",
                style: AppTextStyles.styleInterBold54(context),
              ),
              Row(
                children: [
                  Text(
                    "Digital",
                    style: AppTextStyles.styleInterBold54(context),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Agency",
                    style: AppTextStyles.styleInterBold54(context).copyWith(
                      color: AppColorsStyle.mainColor,
                    ),
                  ),
                ],
              ),
              Text(
                "Partner",
                style: AppTextStyles.styleInterBold54(context),
              ),
            ],
          );
        } else {
          return Column(
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
            children: [
              Text(
                "Your Trusted Digital",
                style: AppTextStyles.styleInterBold54(context),
              ),
              Row(
                mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
                children: [
                  Text(
                    "Agency",
                    style: AppTextStyles.styleInterBold54(context).copyWith(
                      color: AppColorsStyle.mainColor,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Partner",
                    style: AppTextStyles.styleInterBold54(context),
                  ),
                ],
              ),
            ],
          );
        }
      },
    );
  }
}
