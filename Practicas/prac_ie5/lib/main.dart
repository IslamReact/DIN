import 'dart:math';
import 'package:flutter/material.dart';
import 'config/imports/imports.dart';
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
        '/gradients': (context) =>  GradientScreen(),
        '/progress': (context) =>  ProgressIndicatorScreen(),
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