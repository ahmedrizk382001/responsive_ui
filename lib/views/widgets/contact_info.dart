import 'package:flutter/material.dart';
import 'package:responsive_ui/models/contact_info_model.dart';
import 'package:responsive_ui/views/widgets/contact_info_item.dart';

// ignore: must_be_immutable
class ContactInfo extends StatelessWidget {
  ContactInfo({super.key});

  List<ContactInfoModel> contactInfoList = [
    ContactInfoModel(
        contactIcon: Icons.location_on,
        contactData: "lorum ispym locationdado supuerm"),
    ContactInfoModel(
        contactIcon: Icons.email, contactData: "loreum.ispum@gmail.com"),
    ContactInfoModel(
        contactIcon: Icons.mobile_friendly, contactData: "+98564155 54646"),
    ContactInfoModel(
        contactIcon: Icons.move_to_inbox_rounded,
        contactData: "+98564155 54646"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.04, vertical: 85),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xff073340),
                Color(0xff659365),
              ])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          contactInfoList.length * 2 - 1,
          (index) {
            if (index.isEven) {
              int contactIndex = index ~/ 2;
              return ContactInfoItem(
                  contactInfoModel: contactInfoList[contactIndex]);
            } else {
              return const SizedBox(
                height: 50,
              );
            }
          },
        ),
      ),
    );
  }
}
