import 'package:flutter/material.dart';
import 'package:responsive_ui/models/plan_model.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/destop_tablet_specific/desktop_custom_button.dart';
import 'package:responsive_ui/views/widgets/mobile_specific/mobile_custom_button.dart';
import 'package:responsive_ui/views/widgets/plan_feature_item.dart';

class SelectedPlanItem extends StatelessWidget {
  const SelectedPlanItem({super.key, required this.planModel});

  final PlanModel planModel;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double aspectRatio = constraints.maxWidth <= 800
            ? 300 / 628
            : constraints.maxWidth >= 1000 && constraints.maxWidth <= 1400
                ? 390 / 730
                : 349 / 730;

        return AspectRatio(
          aspectRatio: aspectRatio,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: const LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xff659365),
                  Color(0xff073340),
                ],
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 65,
                ),
                FittedBox(
                  child: Text(
                    planModel.planType,
                    maxLines: 1,
                    style: AppTextStyles.stylePoppinsRegular45(context),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: planModel.planPrice,
                        style: AppTextStyles.stylePoppinsMedium37(context),
                      ),
                      TextSpan(
                        text: "/mo",
                        style: AppTextStyles.stylePoppinsRegular20(context),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FittedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      planModel.planFeatures.length * 2 - 1,
                      (index) {
                        int planFeaturesIndex = index ~/ 2;
                        if (index.isEven) {
                          return PlanFeatureItem(
                            featureText:
                                planModel.planFeatures[planFeaturesIndex],
                            color: Colors.white,
                          );
                        } else {
                          return const SizedBox(
                            height: 5,
                          );
                        }
                      },
                    ),
                  ),
                ),
                const Spacer(),
                if (MediaQuery.sizeOf(context).width >= 800)
                  const CustomFilledButton(buttonTitle: "Choose Plan"),
                if (MediaQuery.sizeOf(context).width < 800)
                  const MobileCustomButton(buttonTitle: "Choose Plan"),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class UnSelectedPlanItem extends StatelessWidget {
  const UnSelectedPlanItem({super.key, required this.planModel});

  final PlanModel planModel;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double aspectRatio = constraints.maxWidth <= 800
            ? 300 / 532
            : constraints.maxWidth >= 1000 && constraints.maxWidth <= 1400
                ? 390 / 669
                : 349 / 669;

        return AspectRatio(
          aspectRatio: aspectRatio,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.black,
                width: 5,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 45,
                ),
                FittedBox(
                  child: Text(
                    planModel.planType,
                    style: AppTextStyles.stylePoppinsRegular45(context)
                        .copyWith(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: planModel.planPrice,
                      style: AppTextStyles.stylePoppinsMedium37(context)
                          .copyWith(color: Colors.black)),
                  TextSpan(
                      text: "/mo",
                      style: AppTextStyles.stylePoppinsRegular20(context)
                          .copyWith(color: Colors.black)),
                ])),
                const SizedBox(
                  height: 20,
                ),
                FittedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      planModel.planFeatures.length * 2 - 1,
                      (index) {
                        int planFeaturesIndex = index ~/ 2;
                        if (index.isEven) {
                          return PlanFeatureItem(
                            featureText:
                                planModel.planFeatures[planFeaturesIndex],
                            color: Colors.black,
                          );
                        } else {
                          return const SizedBox(
                            height: 5,
                          );
                        }
                      },
                    ),
                  ),
                ),
                const Spacer(),
                if (MediaQuery.sizeOf(context).width >= 800)
                  const CustomFilledButton(buttonTitle: "Choose Plan"),
                if (MediaQuery.sizeOf(context).width < 800)
                  const MobileCustomButton(buttonTitle: "Choose Plan"),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
