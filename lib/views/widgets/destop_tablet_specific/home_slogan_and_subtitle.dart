import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/slogan_text.dart';

// ignore: must_be_immutable
class HomeSloganAndSubtitle extends StatelessWidget {
  HomeSloganAndSubtitle(
      {super.key, this.crossAxisAlignment, this.mainAxisAlignment});

  CrossAxisAlignment? crossAxisAlignment;
  MainAxisAlignment? mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: [
        SloganText(
          crossAxisAlignment: crossAxisAlignment,
          mainAxisAlignment: mainAxisAlignment,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).width * 0.01,
        ),
        Text(
          "Lorem ipsum dolor sit amet consectetur. Semper a interdum purus velit ullamcorper.",
          style: AppTextStyles.styleInterRegular18(context).copyWith(
            color: const Color(0xffE8E8E8),
          ),
        )
      ],
    );
  }
}
