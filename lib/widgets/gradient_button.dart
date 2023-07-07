import 'package:flutter/material.dart';

import '../commom/constants/app_colors.dart';
import '../commom/constants/app_custom_text.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const GradientButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        width: 325,
        padding: const EdgeInsets.symmetric(vertical: 13),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight,
            colors: AppColors.purpleGradient,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: AppCustomTextStyle.mediumText
                .copyWith(color: AppColors.whiteColor),
          ),
        ),
      ),
    );
  }
}
