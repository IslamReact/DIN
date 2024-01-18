import 'package:flutter/material.dart';
import 'package:prac2_iem/screens/discover_screen.dart';
import 'package:prac2_iem/provider/DiscoverProvider.dart';
import '/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DiscoverProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    Provider.of<DiscoverProvider>(context, listen: false).cargaListaImagePosts();

    return const MaterialApp(
      home: DiscoverScreen(),
    );
  }
}
















