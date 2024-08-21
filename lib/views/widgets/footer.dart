import 'package:flutter/material.dart';
import 'package:responsive_ui/models/footer_details_model.dart';
import 'package:responsive_ui/views/widgets/background_container.dart';
import 'package:responsive_ui/views/widgets/footer_details_item.dart';
import 'package:responsive_ui/views/widgets/footer_info.dart';

// ignore: must_be_immutable
class Footer extends StatelessWidget {
  Footer({super.key});

  List<FooterDetailsModel> footerDetailsData = [
    FooterDetailsModel(title: "Services", choices: [
      "SEO",
      "Email Marketing",
      "Digital Marketing",
      "content writing"
    ]),
    FooterDetailsModel(
        title: "Packages",
        choices: ["Basic", "Premium", "Diamond", "Platinum"]),
    FooterDetailsModel(
        title: "About",
        choices: ["Digital Agency", "Explore", "Contact", "Career"]),
  ];

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      color: const Color(0xff131313),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: FooterFirstSection(),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                footerDetailsData.length,
                (index) {
                  return FooterDetailsItem(
                      footerDetailsModel: footerDetailsData[index]);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
