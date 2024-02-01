import 'package:flutter/material.dart';

const Color mainColor = Colors.brown;

class AppTheme {

  ThemeData generateThemeData() {
    return ThemeData(
      colorSchemeSeed: mainColor,
      appBarTheme: const AppBarTheme(color: mainColor),
      bottomAppBarColor: mainColor,
    );
  }
}