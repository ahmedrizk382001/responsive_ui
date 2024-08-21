import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/destop_tablet_specific/desktop_clients_logos_list.dart';
import 'package:responsive_ui/views/widgets/destop_tablet_specific/desktop_explore_methodology.dart';

class OurClients extends StatelessWidget {
  const OurClients({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "OUR CLIENTS",
          style: AppTextStyles.styleInterBold48(context),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          "Lorem ipsum dolor sit amet consectetur. Semper a interdum purus velit ullamcorper.",
          style: AppTextStyles.styleInterRegular18(context),
        ),
        const SizedBox(
          height: 85,
        ),
        const DesktopClientsLogosList(),
        const SizedBox(
          height: 100,
        ),
        const ExploreOurMethodology()
      ],
    );
  }
}
