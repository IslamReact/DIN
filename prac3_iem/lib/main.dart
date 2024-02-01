import 'package:flutter/material.dart';
import 'package:prac3_iem/screens/home.dart';
import 'package:prac3_iem/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().generateThemeData(),
      title: 'Islam El Mrabet Larhzaoui',
      home: Scaffold(
        body: HomeScreen()
      ),
    );
  }
}