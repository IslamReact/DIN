import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/DiscoverProvider.dart';
import '../views/video_scrollable.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DiscoverProvider>(builder: (context, discoverProvider, _) {
      return Center(
        child: Container(
            child: discoverProvider.isLoading
                ? Stack(
                    children: [
                      VideoScrollableView(
                          videoPosts: discoverProvider.videoPost),
                      Positioned(
                        left: 16,
                        bottom: 16,
                        child: SizedBox(
                          width: 250,
                          child: Text(
                            discoverProvider.videoPost.isNotEmpty
                                ? discoverProvider
                                    .videoPost[discoverProvider.videoPosition]
                                    .subt
                                : '',
                            maxLines: 2,
                            style: const TextStyle(
                              shadows: [Shadow(offset: Offset(2, 2), blurRadius: 1)],
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : const CircularProgressIndicator()),
      );
    });
  }
}
