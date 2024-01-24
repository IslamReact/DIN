import 'dart:core';

class VideoPost{
  final String subt;
  final String videoUrl;
  int? likes;
  int? views;

  VideoPost({required this.subt, required this.videoUrl, this.likes, this.views});
}