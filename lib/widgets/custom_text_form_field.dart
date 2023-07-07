
import 'package:flutter/material.dart';
import '../constants/colors/colors.dart';
import '../constants/custom_style_text/custom_style_text.dart';

class CustomFormField extends StatelessWidget {

  final String? hintText;
  final Icon? prefixIcon;
  final EdgeInsetsGeometry? margin;

  const CustomFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.margin

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xCFA4A4A4)),
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: AppColor.gradientInput,
        ),
      ),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        autocorrect: false,
        obscureText: false,
        textCapitalization: TextCapitalization.none,
        style: const TextStyle(color: AppColor.WhiteColor),
        decoration: InputDecoration(
          
          hintText: hintText,
          hintStyle: AppCustomStyleText.smallText.copyWith(color: AppColor.greyColor),
          prefixIcon: prefixIcon
        ),
      ),
    );
  }
}
