


import 'package:flutter/material.dart';

import '../commom/constants/app_colors.dart';
import '../commom/constants/app_custom_text.dart';

class CustomTextButton extends StatelessWidget {

  final String text;
  final void Function()? onPressed;

  const CustomTextButton({
    super.key,
    required this.text,
    this.onPressed
    
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      
      onPressed: onPressed,
      child: Text(
        text,
        style: AppCustomTextStyle.extraSmallText
            .copyWith(color: AppColors.greyColor),
      ),
    );
  }
}
