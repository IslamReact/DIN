import 'package:flutter/material.dart';
import 'package:prac2_iem/screens/discover_screen.dart';
import 'package:prac2_iem/provider/DiscoverProvider.dart';
import 'package:prac2_iem/theme/app_theme.dart';
import 'package:provider/provider.dart';

import 'components/button.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DiscoverProvider()..cargaListaVideoPost(),
      child: const MyApp(),
    ),
  );
}

/// The main application widget.
///
/// @param context
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme().appTheme();

    return Consumer<DiscoverProvider>(builder: (context, discoverProvider, _) {
      return MaterialApp(
        title: 'Islam El Mrabet Larhzaoui',
        theme: theme,
        home: Scaffold(
          body: const Center(
            child: DiscoverScreen(),
          ),
          floatingActionButton: ButtonColumn(
            likes: discoverProvider.videoPost.isNotEmpty
                ? discoverProvider
                    .videoPost[discoverProvider.videoPosition].likes
                : 0,
            views: discoverProvider.videoPost.isNotEmpty
                ? discoverProvider
                    .videoPost[discoverProvider.videoPosition].views
                : 0,
          ),
        ),
      );
    });
  }
}
