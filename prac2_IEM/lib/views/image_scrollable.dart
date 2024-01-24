import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../domain/video_posts.dart';
import '../provider/DiscoverProvider.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videoPosts;

  const VideoScrollableView({super.key, required this.videoPosts});

  @override
  Widget build(BuildContext context) {
    return Consumer<DiscoverProvider>(builder: (context, discoverProvider, _) {
      return PageView.builder(
          onPageChanged: (int index) {
            discoverProvider.updatePosition(index);
          },
          scrollDirection: Axis.vertical,
          itemCount: videoPosts.length,
          itemBuilder: (context, index) {
            return Image.asset(
              videoPosts[index].videoUrl,
              fit: BoxFit.cover,
            );
          });
    });
  }
}