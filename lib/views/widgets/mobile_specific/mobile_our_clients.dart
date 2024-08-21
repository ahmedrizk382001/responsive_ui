import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/mobile_specific/mobile_clients_logos_list.dart';
import 'package:responsive_ui/views/widgets/mobile_specific/mobile_explore_methodology.dart';

class MobileOurClients extends StatelessWidget {
  const MobileOurClients({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.1),
          child: Column(
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "OUR CLIENTS",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.styleInterBold36(context)
                      .copyWith(color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur. Semper a interdum purus velit ullamcorper.",
                textAlign: TextAlign.center,
                style: AppTextStyles.styleInterRegular18(context),
              ),
              const SizedBox(
                height: 30,
              ),
              const MobileClientsLogosList(),
            ],
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        const MobileExploreMethodology(),
      ],
    );
  }
}
