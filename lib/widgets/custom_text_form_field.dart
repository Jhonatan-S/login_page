

import 'package:flutter/material.dart';

import '../commom/constants/app_colors.dart';
import '../commom/constants/app_custom_text.dart';

class CustomTextFormField extends StatefulWidget {

  final String? hintText;
  final Icon? prefixIcon;
  final Widget? sufixIcon;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final EdgeInsets? margin;
  final bool obscureText;
  final String? helperText;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.sufixIcon,
    this.validator,
    this.textInputAction,
    this.margin,
    required this.obscureText,
    this.helperText,
    this.keyboardType,
    this.onChanged,
    
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: AppColors.darkGradient,
          ),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: AppColors.greyColor, width: 0.3)),
      child: TextFormField(
        onChanged: widget.onChanged,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        style: const TextStyle(color: AppColors.whiteColor),
        textInputAction: widget.textInputAction,
        cursorColor: AppColors.greyColor,
        decoration: InputDecoration(
          helperText: widget.helperText,
          helperStyle: AppCustomTextStyle.extraSmallText,
          hintText: widget.hintText,
          hintStyle: AppCustomTextStyle.smallText
              .copyWith(color: AppColors.greyColor),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.sufixIcon,
          errorStyle: AppCustomTextStyle.extraSmallText,
        ),
        validator: widget.validator,
        
        
      ),
    );
  }
}