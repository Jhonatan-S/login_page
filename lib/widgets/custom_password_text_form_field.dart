import 'package:flutter/material.dart';
import 'package:login/commom/constants/app_colors.dart';
import 'package:login/widgets/custom_text_form_field.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  final Icon? prefixIcon;
  final Widget? sufixIcon;
  final bool obscureText;

  const CustomPasswordTextFormField({
    super.key,
    this.prefixIcon,
    this.sufixIcon,
    required this.obscureText,
  });

  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: 'Password',
      obscureText: isHidden ? widget.obscureText : false,
      prefixIcon: widget.prefixIcon,
      sufixIcon: InkWell(
        onTap: () {
          setState(() {
            isHidden = !isHidden;
          });
        },
        child: Icon(isHidden ? Icons.visibility : Icons.visibility_off, color: AppColors.greyColor,),
      ),
    );
  }
}
