import 'dart:core';

class  ImagePost{
  final String subt;
  final String url;
  int? likes;
  int? views;

  ImagePost({required this.subt, required this.url, this.likes, this.views});
}