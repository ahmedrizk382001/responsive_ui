import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/utils/app_styles.dart';

class FooterFirstSection extends StatelessWidget {
  const FooterFirstSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "DIGITREND",
          style: MediaQuery.sizeOf(context).width <= 800
              ? AppTextStyles.styleInterBold16(context)
              : AppTextStyles.styleInterBold36(context),
        ),
        Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ornare cursus sed nunc eget dictum  Sed ornare cursus sed nunc eget dictumd nunc eget dictum  Sed ornare cursus sed nunc eget dictum.",
            style: MediaQuery.sizeOf(context).width <= 800
                ? AppTextStyles.styleInterMedium22(context).copyWith(
                    color: Colors.white,
                    fontSize: 8,
                  )
                : AppTextStyles.styleInterRegular12(context)
                    .copyWith(color: Colors.white)),
        if (MediaQuery.sizeOf(context).width > 450)
          const SizedBox(
            height: 45,
          ),
        if (MediaQuery.sizeOf(context).width > 450)
          SvgPicture.asset(Assets.imagesSocialMediaIcons),
      ],
    );
  }
}
