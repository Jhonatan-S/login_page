import 'package:flutter/material.dart';
import 'package:login/constants/colors/colors.dart';
import 'package:login/constants/custom_style_text/custom_style_text.dart';
import 'package:login/widgets/custom_password_text_form_field.dart';
import 'package:login/widgets/custom_text_form_field.dart';

import '../../constants/images/images.dart';

class SingInPage extends StatefulWidget {
  const SingInPage({super.key});

  @override
  State<SingInPage> createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  
                  children: [
                    Image.asset(Images.signInImg),
                    Transform.translate(
                      offset: const Offset(0, 220),
                      child: Container(
                        height: 800,
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(173, 53, 30, 60),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Column(
                          
                          children: [
                            Text(
                              'Welcome Back!',
                              textAlign: TextAlign.center,
                              style: AppCustomStyleText.bigText
                                  .copyWith(color: AppColor.WhiteColor),
                            ),
                            Text(
                              'Welcome back we missed you',
                              textAlign: TextAlign.center,
                              style: AppCustomStyleText.smallText
                                  .copyWith(color: AppColor.greyColor),
                            ),
                            Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  const CustomFormField(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 30),
                                    hintText: 'Username',
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: AppColor.greyColor,
                                    ),
                                  ),
                                  const CustomPasswordTextFormField(
                                    margin: EdgeInsets.symmetric(horizontal: 30),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 30),
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Forgot Password?',
                                          style: AppCustomStyleText.smallText
                                              .copyWith(
                                                  color: AppColor.greyColor,
                                                  fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 30),
                                      padding: const  EdgeInsets.symmetric(vertical: 15),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: AppColor.gradientBtn),
                                            borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Text('Sing in'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
