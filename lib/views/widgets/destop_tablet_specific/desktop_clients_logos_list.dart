import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui/utils/app_images.dart';

class DesktopClientsLogosList extends StatelessWidget {
  const DesktopClientsLogosList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(
          width: 50,
        ),
        Expanded(child: Center(child: SvgPicture.asset(Assets.imagesAirbnb))),
        const SizedBox(
          width: 50,
        ),
        Expanded(child: Center(child: SvgPicture.asset(Assets.imagesGithub))),
        const SizedBox(
          width: 50,
        ),
        Expanded(child: Center(child: SvgPicture.asset(Assets.imagesSpotify))),
        const SizedBox(
          width: 50,
        ),
        Expanded(child: Center(child: SvgPicture.asset(Assets.imagesHusky))),
        const SizedBox(
          width: 50,
        ),
      ],
    );
  }
}
