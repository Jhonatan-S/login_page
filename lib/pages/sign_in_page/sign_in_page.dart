import 'package:flutter/material.dart';
import 'package:login/commom/constants/app_colors.dart';
import 'package:login/commom/constants/app_custom_text.dart';
import 'package:login/commom/constants/app_images.dart';
import 'package:login/logic/validator/validators.dart';
import 'package:login/pages/sign_up_page/sign_up_page.dart';
import 'package:login/widgets/custom_password_text_form_field.dart';

import '../../widgets/custom_text_form_field.dart';
import '../../widgets/google_facebook_apple_sing_up.dart';
import '../../widgets/gradient_button.dart';
import '../../widgets/text_button.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _userKey = GlobalKey<FormFieldState>();
  final _formKey = GlobalKey<FormState>();

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
                child: Image.asset(signInImage),
              ),
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
                      child: SingleChildScrollView(
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
                            Form(
                              key: _formKey,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 40),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 20),
                                    CustomTextFormField(
                                      key: _userKey,
                                      obscureText: false,
                                      hintText: 'Username',
                                      validator: Validator.validateName,
                                      prefixIcon: const Icon(
                                        Icons.person,
                                        color: AppColors.greyColor,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    const CustomPasswordTextFormField(
                                      obscureText: true,
                                      validator: Validator.validatePassword,
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
                                        onPressed: () {
                                          _userKey.currentState?.validate();
                                        },
                                        text: 'Fogot Password?',
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    GradientButton(
                                      onTap: () {
                                        _formKey.currentState?.validate();
                                      },
                                      text: 'Sign In',
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
                              'Or continue with',
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
                                  "Don't have an Account? ",
                                  style: AppCustomTextStyle.smallText
                                      .copyWith(color: AppColors.whiteColor),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const SignUpPage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Sing Un',
                                    style: AppCustomTextStyle.smallText
                                        .copyWith(color: Colors.purple),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
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
      ),
    );
  }
}
