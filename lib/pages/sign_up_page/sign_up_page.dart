import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:login/commom/constants/app_colors.dart';
import 'package:login/commom/constants/app_custom_text.dart';
import 'package:login/commom/constants/app_images.dart';
import 'package:login/utils/validator/validators.dart';
import 'package:login/widgets/custom_password_text_form_field.dart';

import '../../widgets/custom_text_form_field.dart';
import '../../widgets/google_facebook_apple_sing_up.dart';
import '../../widgets/gradient_button.dart';
import '../sign_in_page/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController textInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(signUpImage),
              ),
              Stack(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.7,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: AppColors.backgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Ger Started Free',
                              textAlign: TextAlign.center,
                              style: AppCustomTextStyle.bigText
                                  .copyWith(color: AppColors.whiteColor),
                            ),
                            Text(
                              'Free forever. No credit card nedded',
                              textAlign: TextAlign.center,
                              style: AppCustomTextStyle.smallText
                                  .copyWith(color: AppColors.greyColor),
                            ),
                            Form(
                              key: _formKey,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 40),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 20),
                                    CustomTextFormField(
                                      onChanged: (value) {
                                        if (value.length == 1 ||
                                            value.length == 6) {
                                          setState(() {
                                            _formKey.currentState?.validate();
                                          });
                                        }
                                      },
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      hintText: 'Username',
                                      validator: Validator.validateName,
                                      prefixIcon: const Icon(
                                        Icons.person,
                                        color: AppColors.greyColor,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    CustomTextFormField(
                                      onChanged: (value) {
                                        setState(() {
                                          _formKey.currentState?.validate();
                                        });
                                      },
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.next,
                                      validator: Validator.validateEmail,
                                      hintText: 'Email',
                                      obscureText: false,
                                      prefixIcon: const Icon(
                                        Icons.email,
                                        color: AppColors.greyColor,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                     CustomPasswordTextFormField(
                                      onChanged: (value) {
                                        if (value.length == 1 ||
                                            value.length == 8) {
                                          setState(() {
                                            _formKey.currentState?.validate();
                                          });
                                        }
                                      },
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.done,
                                      validator: Validator.validatePassword,
                                      obscureText: true,
                                      prefixIcon: const Icon(
                                        Icons.key,
                                        color: AppColors.greyColor,
                                      ),
                                      sufixIcon: const Icon(
                                        Icons.visibility,
                                        color: AppColors.greyColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    GradientButton(
                                      text: 'Sign Up',
                                      onTap: () {
                                        _formKey.currentState?.validate();
                                      },
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Or sign up with',
                              style: AppCustomTextStyle.extraSmallText
                                  .copyWith(color: AppColors.greyColor),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ContainerSocialMedia(
                                  imagePath: 'assets/images/google_icon.png',
                                ),
                                ContainerSocialMedia(
                                  imagePath: 'assets/images/facebook_icon.png',
                                ),
                                ContainerSocialMedia(
                                  imagePath: 'assets/images/apple_icon.png',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Already have an Account? ',
                                  style: AppCustomTextStyle.smallText
                                      .copyWith(color: AppColors.whiteColor),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const SignInPage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Sing In',
                                    style: AppCustomTextStyle.smallText
                                        .copyWith(color: Colors.purple),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Those images are the cicle light blur near de title Welcome back
                  // ###########
                  Positioned(
                    top: -18,
                    left: -10,
                    child: Image.asset('assets/images/shape_cicle.png'),
                  ),

                  // ###########
                  // Those images are the cicle light blur near de title Welcome back
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
