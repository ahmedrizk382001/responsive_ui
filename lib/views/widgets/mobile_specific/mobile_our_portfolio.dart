import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/utils/app_styles.dart';

class MobileOurPortfolio extends StatelessWidget {
  const MobileOurPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Our Portfolio",
          textAlign: TextAlign.center,
          style: AppTextStyles.styleInterBold36(context)
              .copyWith(color: Colors.black),
        ),
        const SizedBox(
          height: 14,
        ),
        Text(
          "Lorem ipsum dolor sit amet consectetur. Semper a interdum purus velit ullamcorper.",
          textAlign: TextAlign.center,
          style: AppTextStyles.styleInterRegular18(context),
        ),
        const SizedBox(
          height: 50,
        ),
        PortfolioImages(),
      ],
    );
  }
}

// ignore: must_be_immutable
class PortfolioImages extends StatelessWidget {
  PortfolioImages({super.key});

  List<String> portfolioImages = [
    Assets.imagesStatisticsImage,
    Assets.imagesDrawingImage,
    Assets.imagesCodingImage,
    Assets.imagesDashboardImage,
    Assets.imagesMobileImage
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.05),
      child: Column(
          children: List.generate(
        portfolioImages.length * 2 - 1,
        (index) {
          int imageIndex = index ~/ 2;
          if (index.isEven) {
            return Image.asset(
              portfolioImages[imageIndex],
              width: double.infinity,
              fit: BoxFit.contain,
            );
          } else {
            return SizedBox(
              height: MediaQuery.sizeOf(context).width * 0.03,
            );
          }
        },
      )),
    );
  }
}
