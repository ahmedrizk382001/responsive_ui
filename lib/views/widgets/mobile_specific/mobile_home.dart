import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/mobile_specific/mobile_custom_button.dart';
import 'package:responsive_ui/views/widgets/mobile_specific/mobile_header.dart';
import 'package:responsive_ui/views/widgets/slogan_text.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key, required this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1100 + (MediaQuery.sizeOf(context).width - 430) * 0.5,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.imagesMobileBackground),
              fit: BoxFit.fill)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 0.07,
          ),
          MobileHeader(
            onTap: onTap,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 0.12,
          ),
          FittedBox(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * 0.1),
              child: SloganText(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.1),
            child: Text(
              "Lorem ipsum dolor sit amet consectetur. Semper a interdum purus velit ullamcorper.",
              textAlign: TextAlign.center,
              style: AppTextStyles.styleInterRegular18(context).copyWith(
                color: const Color(0xffE8E8E8),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.1),
            child: SvgPicture.asset(
              Assets.imagesMarketingConsulting,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const MobileCustomButton(
            buttonTitle: "Get Started",
          ),
          const SizedBox(
            height: 14,
          ),
          const MobileCustomOutlinedButton(buttonTitle: "Explore More"),
          const Flexible(
            child: SizedBox(
              height: 80,
            ),
          ),
        ],
      ),
    );
  }
}
