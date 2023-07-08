import 'package:flutter/material.dart';
import 'package:login/pages/onboaring_page/onboarding_page.dart';





class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none.copyWith(
            borderSide: const BorderSide(color: Colors.red),
          ),
        ),
      ),
      home: const SafeArea(child: OnboardingPage()),
    );
  }
}
