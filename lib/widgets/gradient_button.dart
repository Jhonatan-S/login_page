


import 'package:flutter/material.dart';

import '../commom/constants/app_colors.dart';
import '../commom/constants/app_custom_text.dart';

class GradientButton extends StatelessWidget {

  final String text;

  const GradientButton({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        
        width: 325,
        padding: const EdgeInsets.symmetric(
            vertical: 13),
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.bottomRight,
              colors: AppColors.purpleGradient),
        ),
        child: Center(
          child: Text(
            text,
            style: AppCustomTextStyle.mediumText
                .copyWith(
                    color: AppColors.whiteColor),
          ),
        ),
      ),
    );
  }
}
