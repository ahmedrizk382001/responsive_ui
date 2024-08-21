import 'package:flutter/material.dart';
import 'package:responsive_ui/models/service_model.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/service_item.dart';

class MobileOurServices extends StatefulWidget {
  const MobileOurServices({super.key});

  @override
  State<MobileOurServices> createState() => _MobileOurServices();
}

class _MobileOurServices extends State<MobileOurServices> {
  List<ServiceModel> serviceItems = [
    ServiceModel(
        serviceName: "Digital Marketing",
        serviceSubTitle:
            "Lorem ipsum dolor sit amet consectetur. Semper a interdum purus velit ullamcorper. Lorem ipsum dolor sit",
        serviceImage: Assets.imagesMarketing),
    ServiceModel(
        serviceName: "SEO Consultancy",
        serviceSubTitle:
            "Lorem ipsum dolor sit amet consectetur. Semper a interdum purus velit ullamcorper. Lorem ipsum dolor sit",
        serviceImage: Assets.imagesSEO),
    ServiceModel(
        serviceName: "Content Writing",
        serviceSubTitle:
            "Lorem ipsum dolor sit amet consectetur. Semper a interdum purus velit ullamcorper. Lorem ipsum dolor sit",
        serviceImage: Assets.imagesWebsiteCreator),
  ];

  String isServiceSelected = "SEO Consultancy";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.08),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "OUR SERVICES",
              textAlign: TextAlign.center,
              style: AppTextStyles.styleInterBold36(context)
                  .copyWith(color: Colors.black),
            ),
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
          Column(
            children: List.generate(serviceItems.length * 2 - 1, (index) {
              if (index.isEven) {
                int serviceIndex = index ~/ 2;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      isServiceSelected =
                          serviceItems[serviceIndex].serviceName;
                    });
                  },
                  child: ServiceItem(
                    serviceModel: serviceItems[serviceIndex],
                    isSelected: isServiceSelected ==
                        serviceItems[serviceIndex].serviceName,
                  ),
                );
              } else {
                return SizedBox(
                    height: MediaQuery.sizeOf(context).width * 0.08);
              }
            }),
          ),
        ],
      ),
    );
  }
}
