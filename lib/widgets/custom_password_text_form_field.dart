import 'package:flutter/material.dart';
import 'package:login/constants/colors/colors.dart';
import 'package:login/widgets/custom_text_form_field.dart';

class CustomPasswordTextFormField extends StatelessWidget {

  final EdgeInsetsGeometry? margin;
  const CustomPasswordTextFormField({super.key, this.margin});

  @override
  Widget build(BuildContext context) {
    return CustomFormField(
      margin: margin,
      hintText: '********',
      prefixIcon: const Icon(
        Icons.key,
        color: AppColor.greyColor,
      ),
    );
  }
}
