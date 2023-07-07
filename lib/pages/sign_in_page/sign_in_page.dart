import 'package:flutter/material.dart';
import 'package:login/commom/constants/app_colors.dart';
import 'package:login/commom/constants/app_custom_text.dart';
import 'package:login/commom/constants/app_images.dart';
import 'package:login/widgets/custom_password_text_form_field.dart';

import '../../widgets/custom_text_form_field.dart';
import '../../widgets/google_facebook_apple_sing_up.dart';
import '../../widgets/gradient_button.dart';
import '../../widgets/text_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(signInImage),
            Stack(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.7,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(99, 54, 0, 96),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Text(
                          'Welcome Back!',
                          textAlign: TextAlign.center,
                          style: AppCustomTextStyle.bigText
                              .copyWith(color: AppColors.whiteColor),
                        ),
                        Text(
                          'Welcome back we missed you',
                          textAlign: TextAlign.center,
                          style: AppCustomTextStyle.smallText
                              .copyWith(color: AppColors.greyColor),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Form(
                            child: Column(
                              children: [
                                SizedBox(height: 20),
                                CustomTextFormField(
                                  obscureText: false,
                                  hintText: 'Username',
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: AppColors.greyColor,
                                  ),
                                ),
                                SizedBox(height: 20),
                                CustomPasswordTextFormField(
                                  obscureText: true,
                                  prefixIcon: Icon(
                                    Icons.key,
                                    color: AppColors.greyColor,
                                  ),
                                  sufixIcon: Icon(
                                    Icons.visibility,
                                    color: AppColors.greyColor,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: CustomTextButton(
                                    text: 'Fogot Password?',
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                GradientButton(
                                  text: 'Sign In',
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomTextButton(text: 'Or continue with'),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ContainerSocialMedia(imagePath: 'assets/images/google_icon.png',),
                            ContainerSocialMedia(imagePath: 'assets/images/facebook_icon.png',),
                            ContainerSocialMedia(imagePath: 'assets/images/apple_icon.png',),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Those images are the cicle light blur near de title Welcome back and de bottompipe also near the title welcome back
                // ###########
                Positioned(
                  top: -18,
                  left: -10,
                  child: Image.asset('assets/images/shape_cicle.png'),
                ),
                Positioned(
                  right: 0,
                  top: -12,
                  child: Image.asset('assets/images/bottom_pipe.png'),
                ),
                // ###########
                // Those images are the cicle light blur near de title Welcome back and de bottompipe also near the title welcome back
              ],
            ),
          ],
        ),
      ),
    );
  }
}

