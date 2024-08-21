import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/models/service_model.dart';
import 'package:responsive_ui/utils/app_styles.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({
    super.key,
    required this.serviceModel,
    required this.isSelected,
  });

  final ServiceModel serviceModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? const Color(0xff659365) : Colors.transparent,
          width: 5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          AspectRatio(
              aspectRatio: 288.84 / 213,
              child: Padding(
                padding: const EdgeInsets.only(left: 45, right: 45),
                child: SvgPicture.asset(
                  serviceModel.serviceImage,
                  fit: BoxFit.fill,
                ),
              )),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FittedBox(
                  child: Text(
                    serviceModel.serviceName,
                    style: AppTextStyles.styleInterBold24(context),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  serviceModel.serviceSubTitle,
                  style: AppTextStyles.styleInterRegular18(context),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 76,
                ),
                Text(
                  "Explore >",
                  style: AppTextStyles.styleInterBold16(context).copyWith(
                    color: isSelected ? const Color(0xff659365) : Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
