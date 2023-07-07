import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login/commom/constants/app_colors.dart';
import 'package:login/commom/constants/app_custom_text.dart';
import 'package:login/pages/onboaring_page/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Timer init() {
    return Timer(const Duration(seconds: 3), navigateToOnBoarding);
  }

  void navigateToOnBoarding() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const OnboardingPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 0, 79),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '@jhon_flutter',
              style: AppCustomTextStyle.bigText.copyWith(
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator(
              color: AppColors.whiteColor,
            )
          ],
        ),
      ),
    );
  }
}
