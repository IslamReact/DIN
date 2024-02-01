import 'package:flutter/material.dart';

final _listaColores = [
  Colors.red,
  Colors.orange,
  Colors.blue,
  Colors.green,
  Colors.amber,
  Colors.cyan
];

class AppTheme {
  final int colorSelect;

  AppTheme({this.colorSelect = 0})
      : assert(colorSelect >= 0 && colorSelect <= _listaColores.length - 1,
      'El número debe estar entre 0 y ${_listaColores.length}');

  ThemeData generaTema() {
    final randomColor = _listaColores[colorSelect];

    return ThemeData(
      colorSchemeSeed: randomColor,
      appBarTheme: AppBarTheme(color: (randomColor)),
    );
  }
}