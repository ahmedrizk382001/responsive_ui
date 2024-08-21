import 'package:flutter/material.dart';
import 'package:responsive_ui/models/footer_details_model.dart';
import 'package:responsive_ui/utils/app_styles.dart';

class FooterDetailsItem extends StatelessWidget {
  const FooterDetailsItem({super.key, required this.footerDetailsModel});

  final FooterDetailsModel footerDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          footerDetailsModel.title,
          style: MediaQuery.sizeOf(context).width <= 800
              ? AppTextStyles.styleInterBold16(context)
                  .copyWith(color: Colors.white, fontSize: 13)
              : AppTextStyles.styleInterBold24(context)
                  .copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            footerDetailsModel.choices.length * 2 - 1,
            (index) {
              int footerDetailsItemIndex = index ~/ 2;
              if (index.isEven) {
                return Text(
                  footerDetailsModel.choices[footerDetailsItemIndex],
                  style: MediaQuery.sizeOf(context).width <= 800
                      ? AppTextStyles.styleInterMedium22(context)
                          .copyWith(fontSize: 8)
                      : AppTextStyles.styleInterBold16(context)
                          .copyWith(fontWeight: FontWeight.w500),
                );
              } else {
                return const SizedBox(
                  height: 20,
                );
              }
            },
          ),
        )
      ],
    );
  }
}
