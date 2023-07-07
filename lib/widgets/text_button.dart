


import 'package:flutter/material.dart';

import '../commom/constants/app_colors.dart';
import '../commom/constants/app_custom_text.dart';

class CustomTextButton extends StatelessWidget {

  final String text;
  const CustomTextButton({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: AppCustomTextStyle.extraSmallText
            .copyWith(color: AppColors.greyColor),
      ),
    );
  }
}
