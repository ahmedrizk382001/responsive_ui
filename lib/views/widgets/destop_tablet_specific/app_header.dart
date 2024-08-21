import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/destop_tablet_specific/desktop_custom_button.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "DIGITREND",
          style: AppTextStyles.styleInterBold36(context),
        ),
        const HeaderTitles(),
        const CustomFilledButton(buttonTitle: "Contact Us"),
      ],
    );
  }
}

// ignore: must_be_immutable
class HeaderTitles extends StatefulWidget {
  const HeaderTitles({super.key});

  @override
  State<HeaderTitles> createState() => _HeaderTitlesState();
}

class _HeaderTitlesState extends State<HeaderTitles> {
  List<String> headerTitles = [
    "Home",
    "About Us",
    "Services",
    "Pricing",
    "Portfolio"
  ];

  String isSelected = "Home";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: headerTitles.map(
        (e) {
          return Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = e;
                });
              },
              child: Text(
                e,
                style: isSelected == e
                    ? AppTextStyles.styleInterMedium22(context).copyWith(
                        color: AppColorsStyle.mainColor,
                        fontWeight: FontWeight.w700,
                      )
                    : AppTextStyles.styleInterMedium22(context),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
