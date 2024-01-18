import 'dart:core';

import '../domain/ Image_Post.dart';


class ModeloImagenLocal {

  final String name;
  final String imgUrl;
  int? likes;
  int? views;

  ModeloImagenLocal({required this.name, required this.imgUrl, this.likes, this.views});

  factory ModeloImagenLocal.fromMap(Map<String, dynamic> imagePost) {
    return ModeloImagenLocal(
      name: imagePost['name'] ?? 'No tiene nombre',
      imgUrl: imagePost['imgUrl'],
      likes: imagePost['likes'] ?? 0,
      views: imagePost['views'] ?? 0,
    );
  }

  ImagePost toImagePost() {
    return ImagePost(
      subt: name,
      url: imgUrl,
      likes: likes ?? 0,
      views: views ?? 0,
    );
  }
}