import 'package:flutter/material.dart';
import 'package:responsive_ui/models/plan_model.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/background_container.dart';
import 'package:responsive_ui/views/widgets/plan_item.dart';

// ignore: must_be_immutable
class OurPlan extends StatefulWidget {
  const OurPlan({super.key});

  @override
  State<OurPlan> createState() => _OurPlanState();
}

class _OurPlanState extends State<OurPlan> {
  List<PlanModel> planModels = [
    PlanModel(planType: "Free", planPrice: r"$0", planFeatures: [
      "1 user request",
      "1 design account",
      "Email support",
      "10 deployment",
    ]),
    PlanModel(planType: "Premium", planPrice: r"$55", planFeatures: [
      "10 user request",
      "3 design account",
      "Email support",
      "100 deployment",
      "24/7 Support",
      "Premium Support",
    ]),
    PlanModel(planType: "Enterprise", planPrice: r"$105", planFeatures: [
      "Unlimited user request",
      "3 to 50 design account",
      "Email support",
      "Unlimited deployment",
      "24/7 Support",
      "Advanced security",
      "Invoice and billing"
    ]),
  ];

  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        child: Column(
      children: [
        Text(
          "Choose Our Plan",
          style: AppTextStyles.styleInterBold48(context),
        ),
        const SizedBox(
          height: 14,
        ),
        Text(
          "Lorem ipsum dolor sit amet consectetur. Semper a interdum purus velit ullamcorper.",
          style: AppTextStyles.styleInterRegular18(context),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.04,
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              double maxContentWidth = 1200; // Maximum width for scaling
              double width = constraints.maxWidth;
              double scaleFactor =
                  width >= maxContentWidth ? maxContentWidth / width : 1;

              return SizedBox(
                width: width * scaleFactor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    planModels.length,
                    (index) {
                      if (index == selectedIndex) {
                        return Expanded(
                          child: SelectedPlanItem(planModel: planModels[index]),
                        );
                      } else {
                        return Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: UnSelectedPlanItem(
                                planModel: planModels[index]),
                          ),
                        );
                      }
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ));
  }
}
