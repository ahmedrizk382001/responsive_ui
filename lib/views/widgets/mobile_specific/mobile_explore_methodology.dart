import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/background_container.dart';
import 'package:responsive_ui/views/widgets/mobile_specific/mobile_custom_button.dart';

class MobileExploreMethodology extends StatelessWidget {
  const MobileExploreMethodology({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Crafting Digital Brilliance Explore Our Methodology",
            textAlign: TextAlign.center,
            style: AppTextStyles.styleInterBold36(context)
                .copyWith(color: Colors.black),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 0.02,
          ),
          Text(
              "Lorem ipsum dolor sit amet consectetur. Semper a interdum purus velit ullamcorper.",
              textAlign: TextAlign.center,
              style: AppTextStyles.styleInterRegular18(context)),
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 0.1,
          ),
          Builder(
            builder: (context) {
              double screenWidth = MediaQuery.sizeOf(context).width;
              double imageWidth = screenWidth * 0.8;

              return Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    width: imageWidth,
                    fit: BoxFit.contain,
                    Assets.imagesMeetingImage,
                  ),
                  SvgPicture.asset(Assets.imagesPlayIcon),
                ],
              );
            },
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 0.08,
          ),
          const MobileCustomButton(buttonTitle: "Contact Us"),
        ],
      ),
    ));
  }
}
