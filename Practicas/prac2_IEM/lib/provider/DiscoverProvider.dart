import 'package:flutter/material.dart';
import 'package:prac2_iem/domain/video_posts.dart';
import '../model/modelo_video_local.dart';
import '../shared/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  List<VideoPost> _videoPosts = [];
  bool _isLoading = false;
  int _videoPosition = 0;
  double _isVolumeUp = 0.0;

  List<VideoPost> get videoPost => _videoPosts;

  bool get isLoading => _isLoading;

  double get isVolumeUp => _isVolumeUp;

  int get videoPosition => _videoPosition;

  /// Carga la lista de imagenes
  ///
  /// @return void
  cargaListaVideoPost() async {
    await Future.delayed(const Duration(seconds: 3));

    _videoPosts = videoPosts
        .map((map) => ModeloVideoLocal.fromMap(map).toVideoPost())
        .toList();

    _isLoading = true;

    notifyListeners();
  }

  /// Actualiza la posicion de la imagen
  ///
  /// @param finalPosition
  void updatePosition(int finalPosition) {
    _videoPosition = finalPosition;
    notifyListeners();
  }

  void toggleAudio() {
    if(_isVolumeUp == 0.0){
      _isVolumeUp = 1.0;
    }else{
      _isVolumeUp = 0.0;

    }
    notifyListeners();
  }
}
