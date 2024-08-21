import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/views/widgets/destop_tablet_specific/app_header.dart';
import 'package:responsive_ui/views/widgets/destop_tablet_specific/desktop_custom_button.dart';
import 'package:responsive_ui/views/widgets/destop_tablet_specific/home_slogan_and_subtitle.dart';

class AppHome extends StatelessWidget {
  const AppHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 766,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.imagesShapeBackground),
              fit: BoxFit.fill)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 63,
          ),
          AppHeader(),
          SizedBox(
            height: 62,
          ),
          AppHomeDetails(),
        ],
      ),
    );
  }
}

class AppHomeDetails extends StatelessWidget {
  const AppHomeDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.05),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeSloganAndSubtitle(),
                SizedBox(
                  height: MediaQuery.sizeOf(context).width * 0.045,
                ),
                Row(
                  children: [
                    const CustomFilledButton(buttonTitle: "Get Started"),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.03,
                    ),
                    const CustomOutlinedButton(buttonTitle: "Explore More"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.05,
          ),
          Expanded(
            child: Center(
              child: SvgPicture.asset(
                Assets.imagesMarketingConsulting,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
