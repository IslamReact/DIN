import 'dart:math';

import 'package:ejercicio_2/chat_screen.dart';
import 'package:ejercicio_2/presentation/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    final ColorScheme esquemaColor = Theme.of(context).colorScheme;
    final ThemeData tema =
        AppTheme(colorSelect: Random().nextInt(6)).generaTema();


    return ChangeNotifierProvider(
      create: (BuildContext context) { return ChatProvider(); },
      child: MaterialApp(
        theme: tema,
        debugShowCheckedModeBanner: false,
        title: 'Chat Si/No',
        home: Scaffold(
          backgroundColor: esquemaColor.onPrimary,
          appBar: AppBar(
            backgroundColor: esquemaColor.onBackground,
            leading: const Padding(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/564x/dc/57/94/dc5794beeb04bd067cf1224e61a9dd97.jpg'
                ),
              ),
            ),
            title: const Text('Interlocutor', style: TextStyle(color: Colors.white),),
          ),
          body: const ChatScreen(),
        )
      ),
    );
  }
}
