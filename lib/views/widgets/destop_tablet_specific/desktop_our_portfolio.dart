import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/utils/app_styles.dart';

class OurPortfolio extends StatelessWidget {
  const OurPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Our Portfolio",
            style: AppTextStyles.styleInterBold48(context),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            "Lorem ipsum dolor sit amet consectetur. Semper a interdum purus velit ullamcorper.",
            style: AppTextStyles.styleInterRegular18(context),
          ),
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            fit: BoxFit.cover,
            width: double.infinity,
            Assets.imagesGroupOfImages,
          ),
        ],
      ),
    );
  }
}
