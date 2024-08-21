import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui/models/footer_details_model.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/background_container.dart';
import 'package:responsive_ui/views/widgets/footer_details_item.dart';
import 'package:responsive_ui/views/widgets/footer_info.dart';

// ignore: must_be_immutable
class MobileSmallsizeFooter extends StatelessWidget {
  MobileSmallsizeFooter({super.key});

  List<FooterDetailsModel> footerDetailsData = [
    FooterDetailsModel(title: "Services", choices: [
      "SEO",
      "Email Marketing",
      "Digital Marketing",
      "content writing"
    ]),
    FooterDetailsModel(
        title: "Packages",
        choices: ["Basic", "Premium", "Diamond", "Platinum"]),
    FooterDetailsModel(
        title: "About",
        choices: ["Digital Agency", "Explore", "Contact", "Career"]),
  ];

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      color: const Color(0xff131313),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const FooterFirstSection(),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              footerDetailsData.length,
              (index) {
                return FooterDetailsItem(
                    footerDetailsModel: footerDetailsData[index]);
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SvgPicture.asset(
            Assets.imagesSocialMediaIcons,
            height: AppTextStyles.styleInterSemiBold18(context).fontSize,
          ),
        ],
      ),
    );
  }
}
