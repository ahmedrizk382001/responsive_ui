// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_styles.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key, required this.hintText, this.maxLines, this.minLines});

  final String hintText;
  int? minLines, maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: minLines ?? 1,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        hintStyle: AppTextStyles.styleInterRegular18(context).copyWith(
            color: const Color(0xff7A7A7A), fontWeight: FontWeight.w700),
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0xff083340), // Black border color
            width: 3, // Border width of 5 when focused
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0xff083340), // Black border color
            width: 3, // Border width of 5
          ),
        ),
      ),
    );
  }
}
