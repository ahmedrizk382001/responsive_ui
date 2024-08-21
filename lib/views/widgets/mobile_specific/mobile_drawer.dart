import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';

// ignore: must_be_immutable
class MobileDrawer extends StatelessWidget {
  MobileDrawer({super.key});

  List<String> drawerItems = [
    "Home",
    "About Us",
    "Services",
    "Pricing",
    "Portfolio"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff164246).withOpacity(0.7),
      ),
      width: MediaQuery.sizeOf(context).width * 0.7,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Text(
              "Menu",
              style: AppTextStyles.styleInterBold36(context).copyWith(
                color: AppColorsStyle.mainColor,
              ),
            ),
          ),
          Column(
            children: List.generate(
              drawerItems.length * 2 - 1,
              (index) {
                int drawerItemsIndex = index ~/ 2;
                if (index.isEven) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Text(
                        drawerItems[drawerItemsIndex],
                        style: AppTextStyles.styleInterMedium22(context),
                      ),
                    ),
                  );
                } else {
                  return const Divider(
                    color: AppColorsStyle.mainColor,
                    height: 0,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
