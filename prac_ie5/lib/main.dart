import 'dart:math';
import 'package:flutter/material.dart';
import 'package:prac_ie5/screen/buttons_screen.dart';
import 'package:prac_ie5/screen/cards_screen.dart';
import 'package:prac_ie5/screen/animations_screen.dart';
import 'package:prac_ie5/screen/food_screen.dart';
import 'package:prac_ie5/screen/home_screen.dart';

import 'config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
    _MyAppState createState() => _MyAppState();
  }

class _MyAppState extends State<MyApp> {
  int colorSelected = 2;

  int _generateRandomColor() {
    return Random().nextInt(11);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/buttons': (context) =>  ButtonsScreen(),
        '/cards': (context) =>  CardsScreen(),
        '/animations': (context) =>  AnimationsScreen(),
        '/food': (context) =>  FoodScreen(),
      },
      title: 'Flutter Demo',
      theme: AppTheme(colorSelected: colorSelected).generateThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Catalogo'),
        ),
        body: const Center(
          child: HomeScreen(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              colorSelected = _generateRandomColor();
            });
          },
          child: const Icon(Icons.color_lens),
        ),
      ),
    );
  }
}