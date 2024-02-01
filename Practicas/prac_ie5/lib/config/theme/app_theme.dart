
import 'package:flutter/material.dart';

final List<Color> listaColores=[
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
  Colors.teal,
  Colors.deepPurple,
  Colors.indigo,
  Colors.pink,
  Colors.brown,
  Colors.grey,
];

class AppTheme {
  final int colorSelected;

  AppTheme({required this.colorSelected});

  ThemeData generateThemeData() {
    return ThemeData(
      colorSchemeSeed: listaColores[colorSelected % Colors.primaries.length],
      appBarTheme: AppBarTheme(color: listaColores[colorSelected]),
    );
  }
}