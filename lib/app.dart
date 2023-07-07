

import 'package:flutter/material.dart';
import 'package:login/constants/themes/custom_theme_text_form_field.dart';
import 'package:login/features/sign_in_page/sign_in_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        inputDecorationTheme: CustomThemeTextFormField.defaultTextFormField,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SingInPage()
    );
  }
}