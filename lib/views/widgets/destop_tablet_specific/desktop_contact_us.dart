import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/background_container.dart';
import 'package:responsive_ui/views/widgets/contact_info.dart';
import 'package:responsive_ui/views/widgets/contact_us_form.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        child: Column(
      children: [
        Text(
          "Contact Us",
          style: AppTextStyles.styleInterBold48(context),
        ),
        const SizedBox(
          height: 90,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(child: ContactUsForm()),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.05,
            ),
            Expanded(child: ContactInfo()),
          ],
        ),
      ],
    ));
  }
}
