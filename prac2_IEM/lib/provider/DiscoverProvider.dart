import 'package:flutter/material.dart';
import 'package:prac2_iem/domain/ Image_Post.dart';
import '../model/modelo_imagen_local.dart';
import '../shared/local_image_posts.dart';

class DiscoverProvider extends ChangeNotifier {

  List<ImagePost> imagePosts = [];
  bool isLoading = false;

  cargaListaImagePosts() async {
    await Future.delayed(const Duration(seconds: 3));

    List<Map<String, dynamic>> imagePostsData = obtenerDatosLocales().cast<Map<String, dynamic>>();

    imagePosts = imagePostsData.map((map) =>
        ModeloImagenLocal.fromMap(map).toImagePost()).toList();

    isLoading = true;

    notifyListeners();

  }
}

List<ImagePost> obtenerDatosLocales() {
  return imagePosts.map((map) =>
      ImagePost(
        subt: map['name'] ?? 'No tiene nombre',
        url: map['imgUrl'],
        likes: map['likes'] ?? 0,
        views: map['views'] ?? 0,
      )).toList();
}
