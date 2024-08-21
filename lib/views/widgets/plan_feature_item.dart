import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';

class PlanFeatureItem extends StatelessWidget {
  const PlanFeatureItem({super.key, required this.featureText, this.color});

  final String featureText;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.check_circle_outline_sharp,
          color: color,
          size: AppTextStyles.stylePoppinsRegular20(context).fontSize,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          featureText,
          style: AppTextStyles.stylePoppinsRegular20(context).copyWith(
            color: color,
          ),
        )
      ],
    );
  }
}
