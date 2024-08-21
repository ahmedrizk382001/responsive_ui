import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui/utils/app_images.dart';

class MobileClientsLogosList extends StatelessWidget {
  const MobileClientsLogosList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(child: SvgPicture.asset(Assets.imagesAirbnb)),
        const SizedBox(
          height: 50,
        ),
        Center(child: SvgPicture.asset(Assets.imagesGithub)),
        const SizedBox(
          height: 50,
        ),
        Center(child: SvgPicture.asset(Assets.imagesSpotify)),
        const SizedBox(
          height: 50,
        ),
        Center(child: SvgPicture.asset(Assets.imagesHusky)),
      ],
    );
  }
}
