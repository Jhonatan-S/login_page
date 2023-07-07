import 'package:flutter/material.dart';

import '../commom/constants/app_colors.dart';

class ContainerSocialMedia extends StatelessWidget {
  final String? imagePath;
  const ContainerSocialMedia({
    super.key,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {},
        child: Ink(
          width: 70,
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: AppColors.darkGradient),
            border: Border.all(width: 0.3, color: AppColors.whiteColor),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Center(
            child: Image.asset(
              imagePath.toString(),
            ),
          ),
        ),
      ),
    );
  }
}
