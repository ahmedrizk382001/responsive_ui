import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/background_container.dart';
import 'package:responsive_ui/views/widgets/contact_info.dart';
import 'package:responsive_ui/views/widgets/contact_us_form.dart';

class MobileContactUs extends StatelessWidget {
  const MobileContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        child: Column(
      children: [
        Text(
          "Contact Us",
          textAlign: TextAlign.center,
          style: AppTextStyles.styleInterBold36(context)
              .copyWith(color: Colors.black),
        ),
        const SizedBox(
          height: 50,
        ),
        ContactInfo(),
        SizedBox(
          height: MediaQuery.sizeOf(context).width * 0.1,
        ),
        const ContactUsForm(),
        SizedBox(
          height: MediaQuery.sizeOf(context).width * 0.1,
        ),
      ],
    ));
  }
}
