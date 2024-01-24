import 'dart:core';

import '../domain/video_posts.dart';


class ModeloVideoLocal {

  final String name;
  final String videoUrl;
  int? likes;
  int? views;

  ModeloVideoLocal({required this.name, required this.videoUrl, this.likes, this.views});

  /// Método para convertir un mapa a un objeto
  ///
  /// @return ModeloImagenLocal()
  factory ModeloVideoLocal.fromMap(Map<String, dynamic> videoPost) {
    return ModeloVideoLocal(
      name: videoPost['name'] ?? 'No tiene nombre',
      videoUrl: videoPost['videoUrl'],
      likes: videoPost['likes'] ?? 0,
      views: videoPost['views'] ?? 0,
    );
  }

  VideoPost toVideoPost() {
    return VideoPost(
      subt: name,
      videoUrl: videoUrl,
      likes: likes ?? 0,
      views: views ?? 0,
    );
  }
}