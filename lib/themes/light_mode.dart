import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
      background: Colors.grey.shade100,
      primary: Colors.grey.shade200,
      secondary: Colors.white,
      tertiary: Colors.grey.shade500,
      inversePrimary: Colors.grey.shade700),
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.all(Colors.grey.shade800),
    trackColor: MaterialStateProperty.all(Colors.grey.shade300),
  ),
);
