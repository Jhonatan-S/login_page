import 'package:flutter/material.dart';
import 'package:login/commom/constants/app_colors.dart';
import 'package:login/commom/constants/app_custom_text.dart';
import 'package:login/pages/sign_in_page/sign_in_page.dart';
import 'package:login/pages/sign_up_page/sign_up_page.dart';
import 'package:login/widgets/gradient_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(172, 14, 2, 51),
      body: Stack(
        children: [
          Opacity(
            opacity: 0.2,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
              height: MediaQuery.sizeOf(context).height,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientButton(
                  text: 'Get Started',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const SignUpPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 25,
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
                            builder: (BuildContext context) => const SignInPage(),
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
