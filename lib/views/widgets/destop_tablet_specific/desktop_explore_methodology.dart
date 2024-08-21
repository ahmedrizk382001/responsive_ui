import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/background_container.dart';
import 'package:responsive_ui/views/widgets/destop_tablet_specific/desktop_custom_button.dart';

class ExploreOurMethodology extends StatelessWidget {
  const ExploreOurMethodology({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Crafting Digital",
                style: AppTextStyles.styleInterBold48(context),
              ),
              Text(
                "Brilliance Explore",
                style: AppTextStyles.styleInterBold48(context),
              ),
              Text(
                "Our Methodology",
                style: AppTextStyles.styleInterBold48(context),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).width * 0.01,
              ),
              Text(
                  "Lorem ipsum dolor sit amet consectetur. Semper a interdum purus velit ullamcorper.",
                  style: AppTextStyles.styleInterRegular18(context)),
              SizedBox(
                height: MediaQuery.sizeOf(context).width * 0.04,
              ),
              const CustomFilledButton(buttonTitle: "Contact Us"),
            ],
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        Builder(
          builder: (context) {
            double screenWidth = MediaQuery.sizeOf(context).width;
            double imageWidth = screenWidth * 0.4;

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
      ],
    ));
  }
}
