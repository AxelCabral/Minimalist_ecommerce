import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
      background: Colors.grey.shade900,
      primary: Colors.grey.shade800,
      secondary: Colors.white,
      tertiary: Colors.grey.shade200,
      inversePrimary: Colors.grey.shade300),
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStateProperty.all(Colors.grey.shade800),
    trackColor: MaterialStateProperty.all(Colors.grey.shade500),
  ),
);
