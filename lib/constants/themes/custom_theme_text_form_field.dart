import 'package:flutter/material.dart';

class CustomThemeTextFormField {
  CustomThemeTextFormField._();

  static const InputDecorationTheme defaultTextFormField = InputDecorationTheme(
    border: InputBorder.none,
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
    ),

  );
}
