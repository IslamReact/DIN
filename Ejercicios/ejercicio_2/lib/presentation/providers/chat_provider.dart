import 'package:flutter/cupertino.dart';

import '../../domain/entities/mensaje.dart';

class ChatProvider extends ChangeNotifier {
  List<Mensaje> listaMensajes = [
    Mensaje(
        texto: 'XD',
        autor: Autor.yo
    )
  ];

  void enviarMensaje(String cadena) {
    if (cadena.isNotEmpty) {
      Mensaje nuevoMensaje = Mensaje(texto: cadena, autor: Autor.yo);
      listaMensajes.add(nuevoMensaje);
      notifyListeners();
    }
  }
}