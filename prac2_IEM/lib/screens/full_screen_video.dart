import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../provider/DiscoverProvider.dart';

class FullScreenVideoPlayer extends StatefulWidget {
  final String url;
  final DiscoverProvider discoverProvider;

  const FullScreenVideoPlayer({
    Key? key,
    required this.url,
    required this.discoverProvider,
  }) : super(key: key);


  @override
  State<FullScreenVideoPlayer> createState() => _FullScreenVideoPlayerState();
}

class _FullScreenVideoPlayerState extends State<FullScreenVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.url)
      ..setLooping(true)
      ..setVolume(widget.discoverProvider.isVolumeUp ? 1.0 : 0.0)
      ..play()
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return (!_controller.value.isInitialized)
        ? const Center(child: CircularProgressIndicator())
        : VideoPlayer(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

}
