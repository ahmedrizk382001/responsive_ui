import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/destop_tablet_specific/desktop_custom_button.dart';
import 'package:responsive_ui/views/widgets/mobile_specific/mobile_custom_button.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key, required this.onTap});

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomFilledIconButton(
            buttonIcon: Icons.menu,
            onTap: onTap,
          ),
          const SizedBox(
            width: 25,
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "DIGITREND",
                style: AppTextStyles.styleInterBold36(context)
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            width: 25,
          ),
          const CustomFilledButton(buttonTitle: "Contact Us"),
        ],
      ),
    );
  }
}
