import 'package:flutter/material.dart';
import 'package:responsive_ui/models/service_model.dart';
import 'package:responsive_ui/utils/app_images.dart';
import 'package:responsive_ui/utils/app_styles.dart';
import 'package:responsive_ui/views/widgets/service_item.dart';

class OurServices extends StatefulWidget {
  const OurServices({super.key});

  @override
  State<OurServices> createState() => _OurServicesState();
}

class _OurServicesState extends State<OurServices> {
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
    return Column(
      children: [
        Text(
          "OUR SERVICES",
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
          height: 90,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.05),
          child: Row(
            children: List.generate(serviceItems.length * 2 - 1, (index) {
              if (index.isEven) {
                int serviceIndex = index ~/ 2;
                return Expanded(
                  child: GestureDetector(
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
                  ),
                );
              } else {
                return SizedBox(width: MediaQuery.sizeOf(context).width * 0.02);
              }
            }),
          ),
        ),
      ],
    );
  }
}
