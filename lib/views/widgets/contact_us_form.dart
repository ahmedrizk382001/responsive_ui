import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/destop_tablet_specific/desktop_custom_button.dart';
import 'package:responsive_ui/views/widgets/custom_textformfield.dart';
import 'package:responsive_ui/views/widgets/mobile_specific/mobile_custom_button.dart';

class ContactUsForm extends StatelessWidget {
  const ContactUsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: CustomTextFormField(hintText: "First Name")),
            const SizedBox(
              width: 35,
            ),
            Expanded(child: CustomTextFormField(hintText: "Last Name")),
          ],
        ),
        const SizedBox(
          height: 28,
        ),
        CustomTextFormField(hintText: "Email"),
        const SizedBox(
          height: 28,
        ),
        CustomTextFormField(
          hintText: "Message",
          minLines: 6,
          maxLines: 7,
        ),
        const SizedBox(
          height: 32,
        ),
        if (MediaQuery.sizeOf(context).width > 800)
          const CustomFilledButton(buttonTitle: "Contact Us"),
        if (MediaQuery.sizeOf(context).width < 800)
          const MobileCustomButton(buttonTitle: "Contact Us"),
      ],
    );
  }
}
