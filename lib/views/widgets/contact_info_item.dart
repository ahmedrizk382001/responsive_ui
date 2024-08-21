import 'package:flutter/material.dart';
import 'package:responsive_ui/models/contact_info_model.dart';
import 'package:responsive_ui/utils/app_styles.dart';

class ContactInfoItem extends StatelessWidget {
  const ContactInfoItem({
    super.key,
    required this.contactInfoModel,
  });

  final ContactInfoModel contactInfoModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          contactInfoModel.contactIcon,
          color: Colors.white,
          size: AppTextStyles.styleRobotoBold18(context).fontSize,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Text(
            contactInfoModel.contactData,
            style: AppTextStyles.stylePoppinsRegular20(context),
          ),
        )
      ],
    );
  }
}
