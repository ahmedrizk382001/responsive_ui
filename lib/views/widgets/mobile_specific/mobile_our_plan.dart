import 'package:flutter/material.dart';
import 'package:responsive_ui/models/plan_model.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/background_container.dart';
import 'package:responsive_ui/views/widgets/plan_item.dart';

// ignore: must_be_immutable
class MobileOurPlan extends StatefulWidget {
  const MobileOurPlan({super.key});

  @override
  State<MobileOurPlan> createState() => _MobileOurPlanState();
}

class _MobileOurPlanState extends State<MobileOurPlan> {
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
          textAlign: TextAlign.center,
          style: AppTextStyles.styleInterBold36(context)
              .copyWith(color: Colors.black),
        ),
        const SizedBox(
          height: 14,
        ),
        Text(
          "Lorem ipsum dolor sit amet consectetur. Semper a interdum purus velit ullamcorper.",
          textAlign: TextAlign.center,
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
              double maxContentWidth = 400; // Maximum width for scaling
              double width = constraints.maxWidth;
              double scaleFactor =
                  width >= maxContentWidth ? maxContentWidth / width : 1;

              return SizedBox(
                width: width * scaleFactor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    planModels.length * 2 - 1,
                    (index) {
                      int planItem = index ~/ 2;
                      if (index.isEven) {
                        if (planItem == selectedIndex) {
                          return SelectedPlanItem(
                              planModel: planModels[planItem]);
                        } else {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = planItem;
                              });
                            },
                            child: UnSelectedPlanItem(
                                planModel: planModels[planItem]),
                          );
                        }
                      } else {
                        return SizedBox(
                          height: MediaQuery.sizeOf(context).width * 0.06,
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
